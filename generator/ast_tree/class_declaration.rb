class ClassDeclaration < ASTNode

  def parent_module
    parents(:of_class => ModuleDeclaration).map{ |i| i.properties[:name] }.reverse.join("::")
  end
  
  def declare
    "class #{normalized_class_name} < IControl::Base; end"
  end

  def full_class_name
    parent_module + "::" + normalized_class_name
  end

  def compile(buffer = nil)
    file_name = "#{normalized_file_name}.rb"
    File.open(file_name,"w+") do |file|
      super(file)
    end
    RBeautify.beautify_file(file_name)

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

  def render_spec(file)

    template_name = File.join(File.dirname(__FILE__),"..",TEMPLATES_DIR,"spec.erb")
    template = ERB.new(File.open(template_name).read,nil,"<>")

    file.puts(template.result(self.get_binding))
  end


end
