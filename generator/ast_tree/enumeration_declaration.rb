class EnumerationDeclaration < ASTNode

  def declare
    comments + "class #{normalized_class_name} < IControl::Base::Enumeration; end"
  end

end
class EnumerationMember < ASTNode; end
