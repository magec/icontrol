module IControl::ASM
  ##
  # The ObjectParams interface enables you to manipulate Object Parameters
  class ObjectParams < IControl::Base

    set_id_name "policy_name"

    class AttackSignatureDefinition < IControl::Base::Struct; end
    class MetacharDefinition < IControl::Base::Struct; end
    class AttackSignatureDefinitionSequence < IControl::Base::Sequence ; end
    class MetacharDefinitionSequence < IControl::Base::Sequence ; end
    class ObjectParamCategorySequence < IControl::Base::Sequence ; end
    # An enumeration for different states of URL parameter
    class ObjectParamCategory < IControl::Base::Enumeration; end    ##
    # Adds (if doesn't exists) or updates (if exists) URL parameter in a polic.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :uri
    # @option opts [String] :param_name The name of the URL parameter.
    # @option opts [IControl::ASM::ObjectParams::ObjectParamCategory] :setting_categories The ObjectParamCategory
    def add_or_update_object_param_with_characteristics(opts)
      opts = check_params(opts,[:uri,:param_name,:setting_categories])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Set or unset staging for URL parameter in a polic.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :uri
    # @option opts [String] :param_name The name of the URL parameter.
    # @option opts [boolean] :flg_is_staging Whether to move the parameter to staging, or pull it out from staging
    def set_parameter_staging_flag(opts)
      opts = check_params(opts,[:uri,:param_name,:flg_is_staging])
      super(opts)
    end

    ##
    # A struct that represents an attack signature in a parameter
    # @attr [Numeric] attack_signature_id The id of the attack signature.
    # @attr [Object] enable_flag The flag that indicates if the attack signature is enabled in the URL parameter
    class AttackSignatureDefinition < IControl::Base::Struct
      icontrol_attribute :attack_signature_id, Numeric
      icontrol_attribute :enable_flag, Object
    end

    ##
    # A struct that represents a meta-character in a parameter
    # @attr [Numeric] metachar_id The id of the metacharacter.
    # @attr [Object] allow_flag The flag that indicates if the metacharacter is allowed or disallowed
    class MetacharDefinition < IControl::Base::Struct
      icontrol_attribute :metachar_id, Numeric
      icontrol_attribute :allow_flag, Object
    end


    ## A sequence of attack signatures
    class AttackSignatureDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of metacharacter definitions
    class MetacharDefinitionSequence < IControl::Base::Sequence ; end
    ##
    class ObjectParamCategorySequence < IControl::Base::Sequence ; end
    # An enumeration for different states of URL parameter
    class ObjectParamCategory < IControl::Base::Enumeration
      # Sets WhiteHat attack signatures and metachars for sql injection vulnerabilities.
      WH_OBJECT_PARAM_SQL_INJECTION = :WH_OBJECT_PARAM_SQL_INJECTION
      # Sets WhiteHat attack signatures and metachars for cross-site scripting vulnerabilities.
      WH_OBJECT_PARAM_XSS = :WH_OBJECT_PARAM_XSS
    end


  end
end
