module IControl::ASM
  ##
  # The ObjectParams interface enables you to manipulate Object Parameters
  class ObjectParams < IControl::Base
    class ObjectParamCategory < IControl::Base::Enumeration; end
    class AttackSignatureDefinition < IControl::Base::Struct; end
    class MetacharDefinition < IControl::Base::Struct; end    ## A sequence of attack signatures
    class AttackSignatureDefinitionSequence < IControl::Base::Sequence ; end## A sequence of metacharacter definitions
    class MetacharDefinitionSequence < IControl::Base::Sequence ; end##
    class ObjectParamCategorySequence < IControl::Base::Sequence ; end##
    # An enumeration for different states of URL parameter
    class ObjectParamCategory < IControl::Base::Enumeration
      # Sets WhiteHat attack signatures and metachars for sql injection vulnerabilities.
      WH_OBJECT_PARAM_SQL_INJECTION = :WH_OBJECT_PARAM_SQL_INJECTION
      # Sets WhiteHat attack signatures and metachars for cross-site scripting vulnerabilities.
      WH_OBJECT_PARAM_XSS = :WH_OBJECT_PARAM_XSS
    end

    ##
    # A struct that represents an attack signature in a parameter
    class AttackSignatureDefinition < IControl::Base::Struct
      # The id of the attack signature.
      icontrol_attribute :attack_signature_id, Numeric
      # The flag that indicates if the attack signature is enabled in the URL parameter
      icontrol_attribute :enable_flag, Object
    end

    ##
    # A struct that represents a meta-character in a parameter
    class MetacharDefinition < IControl::Base::Struct
      # The id of the metacharacter.
      icontrol_attribute :metachar_id, Numeric
      # The flag that indicates if the metacharacter is allowed or disallowed
      icontrol_attribute :allow_flag, Object
    end

    ##
    # Adds (if doesn't exists) or updates (if exists) URL parameter in a policy.
    # :method: add_or_update_object_param_with_characteristics
    # :call-seq:
    # add_or_update_object_param_with_characteristics(policy_name ,uri ,param_name ,setting_categories)
    #
    # Parameters:
    # - policy_name String The name of the policy.
    # - uri String
    # - param_name String The name of the URL parameter.
    # - setting_categories ObjectParamCategory[] The ObjectParamCategory

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Set or unset staging for URL parameter in a policy.
    # :method: set_parameter_staging_flag
    # :call-seq:
    # set_parameter_staging_flag(policy_name ,uri ,param_name ,flg_is_staging)
    #
    # Parameters:
    # - policy_name String The name of the policy.
    # - uri String
    # - param_name String The name of the URL parameter.
    # - flg_is_staging boolean Whether to move the parameter to staging, or pull it out from staging


  end
end
