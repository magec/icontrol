class StructureDeclaration < ASTNode

  def declare
    "class #{normalized_class_name} < IControl::Base::Struct; end"
  end

  def compile(buffer = nil)
    if parent.properties[:klass] == ModuleDeclaration
      module_file = parent.normalized_file_name + ".rb"
      File.open(module_file,"a+") do |file|
        super(file)
      end
      RBeautify.beautify_file(module_file)
    else
      super(buffer)
    end
  end
end

class StructureMember < ASTNode; end
