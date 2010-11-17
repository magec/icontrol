
class ASTNode
  
  TEMPLATES_DIR = "templates"
  
  attr_accessor :properties, :children, :parent 

  def get_binding
    binding
  end
  
  def initialize
    @properties = {}
    @children = []
    @parent = nil
  end

  def comments
    if aux = @properties[:comments] || @properties[:comment]
      chars_per_line = 80
      result = []
      index = 0
      while aux.length - index > 0
        aux_chars_per_line = chars_per_line
        aux_chars_per_line +=1 while aux[index+ aux_chars_per_line] && aux[index + aux_chars_per_line] != ' '

        result << "# " +  ( aux[index..(index + aux_chars_per_line)] || "" )

        index += (aux_chars_per_line + 1)
      end
      return result.join("\n") + "\n"
    end
  end

  def declare
    nil
  end
  
  def parent_module
    ""
  end
  
  def convert_to_ruby(type)
    case type
    when "Short" then return "Numeric"
    when "Long" then return "Numeric"
    when "String" then return "String"
    when "Boolean" then return "Object"
    when "CharSequence" then return "StringSequence"
    else
      return type.gsub(/^Class$/,"Klass")
    end
  end
  
  ##
  # The compilation is made on basis of a template, or simply implementing a compile method
  def compile(buffer = nil)
    template_name = File.join(File.dirname(__FILE__),TEMPLATES_DIR,decamelize(self.class.to_s + ".erb"))
    if File.exists?(template_name)
      template = ERB.new(File.open(template_name).read,nil,"<>")
      aux = template.result(self.get_binding)
    else
      aux = render_children
    end
    buffer.puts(aux) if buffer    
    aux 
  end

  def render_children
    aux = ""
    @children.each do |i|
      aux += "#{i.compile(nil)}"
    end
    return aux
  end
  
  def to_s
    children_s = @children.map { |i| i.to_s }.join(",")    
    "<#{self.class}:#{self.object_id} properties = #{self.properties.inspect} children=[#{children_s}]"
  end


  ##
  # Returns a list of the parents of this node, 
  # is also admits options to filter the result 
  # :of_class => ClassName will return only the parents whose class is this one
  def parents(options = {})
    filters = [Proc.new{|i| i}]
    
    if options != {}
      filters << Proc.new { |i| i.class == options[:of_class] ? i : nil } if options[:of_class]
    end
    
    if parent
      filters.inject(([parent] + [parent.parents]).flatten){ |a,b| a.map(&b) }.compact
    end
    
  end

  def children_filtered(options = {})
    filters = [Proc.new{|i| i}]
    filters << Proc.new { |i| i.class == options[:of_class] ? i : nil } if options[:of_class]     if options != {}
    
    unless @children.empty?
      filters.inject((@children + @children.map{|i| i.children_filtered}).flatten){ |a,b| a.map(&b) }.compact
    end

  end

  def normalized_class_name
    class_name = @properties[:name][0].upcase + @properties[:name][1..-1]
    class_name == "Class" ? "Klass" : class_name
  end

  def decamelize(input)
    decamel = input.gsub(/[[A-Z]*]/) { |p| '_' + p.downcase }
    decamel[0] == '_' ? decamel[1..-1] : decamel
  end

  def normalized_file_name
    return normalized_class_name.downcase
  end

end
