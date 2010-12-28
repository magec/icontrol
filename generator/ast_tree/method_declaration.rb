class MethodDeclaration < ASTNode

  def klass
    @klass ||= parents(:of_class => ClassDeclaration).first
  end

  def parameters
    @parameters ||= @children.select { |i| i.class == MethodParameterDeclaration }
  end
  
  def return_type
    return children_filtered(:of_class => ReturnTypeDeclaration).first
  end

  def throws
    return children_filtered(:of_class => ThrowsExceptionDeclaration)
  end

  def comments
    # Funny and Ugly
    @properties[:comments] = @properties[:comments].gsub("the specified","this").gsub(klass.guess_id_name.gsub("_"," ").gsub(" name",""),klass.guess_id_name.gsub("_"," ").gsub(" name","")[0..-2])
    super
  end

  def method_name
    @properties[:name].gsub("get_","")
  end

  def parameters_filtered
    parameters.reject { |i| i.properties[:name] == klass.guess_id_name}
  end

  def parameters_declaration
    @properties[:name] + ( !parameters.empty? ? "(#{parameters.map{ |i| i.properties[:name]  }.join(" ,")})" : "" )
  end

end

class MethodParameterDeclaration < ASTNode

  def comments
    # Funny and Ugly !!!AND COPIED!!!
    @properties[:comments] = @properties[:comments].gsub("the specified","this").gsub(klass.guess_id_name.gsub("_"," ").gsub(" name",""),klass.guess_id_name.gsub("_"," ").gsub(" name","")[0..-2]) if @properties[:comments]
    super
  end  
end

class ReturnTypeDeclaration < ASTNode
  def type
    return properties[:type].sub("[]","")
  end
end

class ThrowsExceptionDeclaration < ASTNode
  def type
    return "IControl::#{properties[:type]}"
  end
  
  def comment
    return properties[:comment]
  end
end
