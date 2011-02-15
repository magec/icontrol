require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::Base::Sequence do
 

 
  describe "#from_soap" do

    EMPTY_SEQUENCE =<<END
<E:Envelope
xmlns:E="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:A="http://schemas.xmlsoap.org/soap/encoding/"
xmlns:s="http://www.w3.org/2001/XMLSchema-instance"
xmlns:y="http://www.w3.org/2001/XMLSchema"
xmlns:iControl="urn:iControl"
E:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
<E:Body>
<m:get_httpclass_profileResponse
xmlns:m="urn:iControl:LocalLB/VirtualServer">
<return
s:type="A:Array"
A:arrayType="iControl:LocalLB.VirtualServer.VirtualServerHttpClass[][1]">
<item
A:arrayType="iControl:LocalLB.VirtualServer.VirtualServerHttpClass[0]"></item>
</return>
</m:get_httpclass_profileResponse>
</E:Body>
</E:Envelope>
END
    it "should allow to be loaded from soap" do
      IControl::Base.map_response(EMPTY_SEQUENCE).should == []
    end
  end

end
