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
  end
end
