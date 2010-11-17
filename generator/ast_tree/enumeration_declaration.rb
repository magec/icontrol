class EnumerationDeclaration < ASTNode

  def declare
    "class #{normalized_class_name} < IControl::Base::Enumeration; end"
  end

end
class EnumerationMember < ASTNode; end
