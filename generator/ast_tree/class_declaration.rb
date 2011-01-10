class ClassDeclaration < ASTNode  
  
  @@spec_mode = false

  def self.spec_mode=(mode)
    @@spec_mode=mode
  end

  def self.spec_mode
    @@spec_mode
  end
  
  def parent_module
    parents(:of_class => ModuleDeclaration).map{ |i| i.properties[:name] }.reverse.join("::")
  end
  
  def declare
    "class #{normalized_class_name} < IControl::Base; end"
  end

  def guess_id_name
    return @id_name if@id_name
    methods = children_filtered(:of_class => MethodDeclaration)
    counter = Hash.new(0)
    max = { :name => "nil",:value => -1 }
    methods.each do |method|
      method.parameters.each do |parameter| 
        name = parameter.properties[:name]
        counter[name] = counter[name] + 1 
        if counter[name] > max[:value]
          max[:name] = name
          max[:value] = counter[name]
        end
      end
    end
    return @id_name = max[:name]
  end

  def full_class_name
    parent_module + "::" + normalized_class_name
  end

  def compile(buffer = nil)
    unless @@spec_mode
      file_name = "#{normalized_file_name}.rb"
      File.open(file_name,"w+") do |file|
        super(file)
      end
      RBeautify.beautify_file(file_name)
    else
      spec_file_name = "#{normalized_file_name}_spec.rb"

      dir_name = full_class_name.split("::")[0..-2].map { |i| i.decamelize }

      spec_dir = File.dirname(__FILE__) + "/../../spec/"
      file_dir = spec_dir.split("/") + dir_name

      spec_file = File.join(file_dir + [spec_file_name])
      FileUtils.mkdir_p File.join( file_dir )
      unless File.exists?(spec_file)
        File.open(spec_file,"w+") do |file|
          render_spec(file)
        end
        RBeautify.beautify_file(spec_file)
      end
    end
  end

  def render_spec(file)

    template_name = File.join(File.dirname(__FILE__),"..",TEMPLATES_DIR,"spec.erb")
    template = ERB.new(File.open(template_name).read,nil,"<>")

    file.puts(template.result(self.get_binding))
  end


end
