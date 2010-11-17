class Parser

  class << self

    attr_accessor :agent

    def subnodes_to_string(node,joiner = "")
      node.children.map { |i| i.content.strip }.join(joiner).strip.squeeze(" ")
    end

  
    def normalized_class_name_from_uri(uri)
      index = uri.index("iControl")
      return uri[index..-1].split("/").map{|i| i.split("__").map{|j| j.split(".")}}.join("::").gsub("iControl","IControl").gsub("::html","")
    end


    def get_xpath_for_image_cell(name)
      '//table[@class="TableClass"]//descendant::tr[descendant::td/descendant::a[preceding-sibling::img[contains(attribute::src,"' + name + '")]]]'
    end

  end

  GENERIC_TABLE_PROP_EXTRACTOR = Proc.new do |match|
    attrs = {}
    attrs[:name] = match.xpath(".//td/a").children.first.to_s
    attrs[:comments] = match.xpath(".//td")[1].children[0].to_s.strip.squeeze(" ")
    attrs
  end

  GENERIC_TABLE_URL_EXTRACTOR = Proc.new { |match| match.xpath(".//a[@href]").first['href'] }      

  GENERIC_MEMBER_PROP_EXTRACTOR = 

  TOKEN_MAPPER = {

    :MethodParameterDeclaration => {
      :klass => MethodParameterDeclaration,
      :xpath => '//table//descendant::tr[preceding-sibling::tr[descendant::strong[text()="Parameter"]]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:name] = match.xpath(".//td[1]/text()").to_s.strip
        attrs[:type] = subnodes_to_string(match.xpath(".//td[2]")).gsub(" ","")
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[3]")," ")
        attrs
      end      
    },

    :ThrowsExceptionDeclaration => {
      :klass => ThrowsExceptionDeclaration,
      :xpath => '//table//descendant::tr[preceding-sibling::tr[descendant::strong[text()="Exception"]]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:type] = subnodes_to_string(match.xpath(".//td[1]")).gsub(" ","")
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[2]")," ")
        attrs
      end      
    },

    StructureMember => {
      :klass => StructureMember,
      :xpath => '//table[@class="TableClass"]//descendant::tr[descendant::img[contains(attribute::src,"/member")]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:name] = match.xpath(".//td[1]/text()").to_s.strip

        # To obtain the type 
        # first we take the string 
        
        temp_name = subnodes_to_string(match.xpath(".//td[2]")).gsub(" ","")
        link = match.xpath(".//td[2]/a[@href]").first
        
        if link
          # If it is a link to another class, then we get the url and translate its href
          attrs[:type] = normalized_class_name_from_uri(link['href'])
        else
          # If not ge take the name without []'s
          attrs[:type] = temp_name.gsub("[]","")
        end

        # Now we change every [] of the original text to a Sequence 

        attrs[:type] += temp_name.gsub(/[^\[\]]/,"").gsub("[]","Sequence")
        
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[3]")," ")
        attrs
      end
    },
    EnumerationMember => {
      :klass => EnumerationMember,
      :xpath => '//table[@class="TableClass"]//descendant::tr[descendant::img[contains(attribute::src,"enumeration_member")]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:name] = match.xpath(".//td[1]/text()").to_s.strip
        attrs[:value] = subnodes_to_string(match.xpath(".//td[2]"))
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[3]")," ")
        attrs
      end
    },
    :ReturnTypeDeclaration => {
      :klass => ReturnTypeDeclaration,
      :xpath => '//table[preceding-sibling::h2[text()="Return Type"]]//tr[preceding-sibling::tr[descendant::strong[text()="Type"]]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:type] = subnodes_to_string(match.xpath(".//td[1]")).gsub(" ","")
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[2]")," ")
        attrs
      end
    },
    :AliasDeclaration => {
      :klass => AliasDeclaration,
      :xpath => '//table[@class="TableClass"]//descendant::tr[descendant::img[contains(attribute::src,"/alias")]]',
      :extractor => Proc.new do |match|
        attrs = {}
        attrs[:name] = subnodes_to_string(match.xpath(".//td[1]"))
        attrs[:type] = subnodes_to_string(match.xpath(".//td[2]")).gsub(" ","")
        attrs[:comment] = subnodes_to_string(match.xpath(".//td[3]")," ")
        attrs
      end
    }
  }

  ## Given that so many declrations are similar we compress this a little bit

  { 
    :EnumerationDeclaration => "enumeration", 
    :StructureDeclaration => "structure",
    :ModuleDeclaration => "module" , 
    :ClassDeclaration => "interface" , 
    :MethodDeclaration => "operation" 
  }.each do |k,v|
    TOKEN_MAPPER[k] = {
      :klass => class_eval(k.to_s),
      :xpath => get_xpath_for_image_cell(v),
      :extractor => GENERIC_TABLE_PROP_EXTRACTOR,
      :follow => GENERIC_TABLE_URL_EXTRACTOR
    }
  end  


  def self.parse(url,parent = nil)

    doc = Nokogiri::HTML(self.agent.get(url).body)    
    parent = ASTNode.new unless parent

    # Now we look for tokens in the page

    TOKEN_MAPPER.each do |token, node_info|

      xpath = node_info[:xpath]
      klass = node_info[:klass]

      matches = doc.xpath(xpath)
      matches.each do |match|

        node = klass.send("new")
        node.parent = parent
        node.properties = node_info[:extractor].call(match)

        # Recursion        
        if node_info[:follow] && next_url = node_info[:follow].call(match)
          self.parse(next_url,node) 
        end
        parent.children << node
      end

    end
    print "."
    $stdout.flush
    return parent

  end
  
end
