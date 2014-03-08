require 'test/unit'
class ArrayTest < Test::Unit::TestCase
  # you need to add the inheritance part, else you can test your ruby file.	
  def initialize  #without an initialize method your tests will not pass
  end				# err you get is - .rvm/rubies/ruby-2.1.0/lib/ruby/2.1.0/minitest/unit.rb:1296:in `initialize': wrong number of arguments (0 for 1) (ArgumentError)

  def arr_assign
  	a = ["Will", "Smith"]
  	assert_equal ["Will", "Smith"], a
  end

  def addin_eg(x,y)
  	p "Val passed is- #{x}, #{y}"
  	exp_val = gets.to_i
  	act_val = x+y
  	"Classes used - #{exp_val.class} #{act_val.class}"
  	assert act_val == exp_val
  	assert_equal act_val, exp_val
  end
end

a = ArrayTest.new
a.arr_assign
a.addin_eg 4,5

#ArrayTest.new.arr_assign