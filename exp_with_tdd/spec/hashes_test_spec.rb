require 'spec_helper'

describe HashesTest do
  
  before :each do
  	@holidays_hash = Hash.new
  	@holidays_hash["Christmas"] = 1
  	@holidays_hash["New Years Eve"] = 2
  	#holidays_hash.keys.each do |key|
  	#  m = "#{key}="
  	#  obj.send( m, hash[key] ) if obj.respond_to?( m )
	#end
  end	

  describe "adding in hashes" do
  	it "should add key value pairs correctly" do
	  HashesTest.new.cal_sum(@holidays_hash).should == 3
  	end
  end

    describe "adding in hashes using blocks" do
    it "should add key value pairs correctly" do
    HashesTest.new.cal_sum2(@holidays_hash).should == 3
    end
  end

end