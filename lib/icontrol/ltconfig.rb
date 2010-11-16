module IControl::LTConfig

  class ClassInstanceKey < IControl::Base::Struct; end
  class Klass < IControl::Base; end
  class Field < IControl::Base; end## A sequence of InstanceKeys.
  class ClassInstanceKeySequence < IControl::Base::Sequence ; end
  ## A sequence of sequence of InstanceKeys.
  class ClassInstanceKeySequenceSequence < IControl::Base::SequenceSequence ; end
  ##
  # A class instance key specifies fully a class instance. The model is: the loosely-typed
  # configuration system has as meta-data classes and fields. A class contains a number
  # of fields; that is a structural description of data. To complete the model, an instance
  # of a class contains data values. (More accurately, class instances contain data values
  # by containing field instances). The members of this structure can be read: &amp;quot;name"
  # is an instance of class &amp;quot;class_name" inside object &amp;quot;container".
  class ClassInstanceKey < IControl::Base::Struct
    # The class instance in which the instance resides.
    icontrol_attribute :container, String
    # Unused at this time.
    icontrol_attribute :container_class, String
    # The object given by structure member "name" (below) is an instance of this class.
    icontrol_attribute :class_name, String
    # The name of the class instance.
    icontrol_attribute :name, String
  end


end
require "ltconfig/klass"
require "ltconfig/field"
