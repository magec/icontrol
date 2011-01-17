# Given that most of the source code is generated (for documentation pourposes)
# We need a way to add methods and functionality without making those changes 
# in the generated code, to  be ablo to regenerate it when neccesary. So as
# ruby allows open classes we use them to add functionality This file will load those files at boot time
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'icontrol_overlay/local_lb/pool'
require 'icontrol_overlay/common'
