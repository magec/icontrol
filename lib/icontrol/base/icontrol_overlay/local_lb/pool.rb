module IControl::LocalLB
  class Pool < IControl::Base
    def members
      @members ||= IControl::LocalLB::PoolMember.new(:id => id)
    end
  end
end
