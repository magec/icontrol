class AliasDeclaration < ASTNode

  def declare
    declare_internal
  end

  def declare_internal
    if @properties[:name] =~ /SequenceSequence/
      "class #{normalized_class_name} < IControl::Base::SequenceSequence ; end"
    else
      "class #{normalized_class_name} < IControl::Base::Sequence ; end"
    end
  end
end
