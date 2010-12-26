class StructureDeclaration < ASTNode

  def declare
    "class #{normalized_class_name} < IControl::Base::Struct; end"
  end

  def members
    children_filtered(:of_class => StructureMember)
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

class StructureMember < ASTNode
  def attribute_type
    @properties[:type].split("::").map {|i|convert_to_ruby(i[0..0].capitalize + i[1..-1])}.join("::")
  end
end
