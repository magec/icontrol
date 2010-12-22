class ClassDeclaration < ASTNode  
  
  @@spec_mode = false

  def self.spec_mode=(mode)
    @@spec_mode=mode
  end
  
  def parent_module
    parents(:of_class => ModuleDeclaration).map{ |i| i.properties[:name] }.reverse.join("::")
  end
  
  def declare
    "class #{normalized_class_name} < IControl::Base; end"
  end

  def guess_id_name
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
    return max[:name]
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

      spec_file_name = ((full_class_name + "Spec").decamelize + ".rb").split("/")
      levels = full_class_name.split("::").map { |i| ".." }
      
      FileUtils.mkdir_p File.join(levels + ["spec"] + spec_file_name[0..-2])
      spec_file = File.join(levels + ["spec"] + spec_file_name)
      File.open(spec_file,"w+") do |file|
        render_spec(file)
      end
      RBeautify.beautify_file(spec_file)
    end
  end

  def render_spec(file)

    template_name = File.join(File.dirname(__FILE__),"..",TEMPLATES_DIR,"spec.erb")
    template = ERB.new(File.open(template_name).read,nil,"<>")

    file.puts(template.result(self.get_binding))
  end


end
