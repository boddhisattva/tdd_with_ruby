
class HashesTest
	def initialize 	
	  @sum = 0
	  @holidays_hash = Hash.new
	end

	def cal_sum(hash_obj)
	  hash_obj.each do |key,value|
	  	@sum = @sum + value
	  end
	  @sum
	end
end