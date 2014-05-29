#require_relative '../array_test'
require 'spec_helper'

describe ArrayTest do 
	before :each do
	  @a = ArrayTest.new
	end

	describe "#array assign" do
		it "should assign appropriately" do
	  	  #@a = ArrayTest.new
		  @a.arr_assign.should == ["Will", "Smith"]
		end  
	end

	describe "adding eg" do 
	end
	
end