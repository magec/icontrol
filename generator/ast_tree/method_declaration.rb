class MethodDeclaration < ASTNode

  def parameters
    @children.select { |i| i.class == MethodParameterDeclaration }
  end

  def parameters_declaration
    @properties[:name] + ( !parameters.empty? ? "(#{parameters.map{ |i| i.properties[:name]  }.join(" ,")})" : "" )
  end

end
class MethodParameterDeclaration < ASTNode; end
class ReturnTypeDeclaration < ASTNode; end
class ThrowsExceptionDeclaration < ASTNode; end
