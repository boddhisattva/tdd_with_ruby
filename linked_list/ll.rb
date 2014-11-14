class Node
  attr_accessor :data, :next_node
  # def initialize
		# @data     
  # 	@next_node = nil
  # end
end

class LinkList
  attr_accessor :elements, :index
	def initialize(val)
		@elements = {}
		@node = Node.new
		@node.data = val
		@index = 0
		@node.next_node = nil
		@elements[@index] = @node
		#node.next_node = (index += 1) 
		
  	#@elements[:@node.index] = data - this doesn't work.. 
	end

  def add(val)
  	@node = Node.new #every new element that has to be added should point to a new node correponding to it.
  	list_size = @elements.size
  	last_element_index = list_size - 1
  	@elements[last_element_index].next_node = list_size
  	new_element_index = list_size
  	@node.data = val
  	@node.next_node = nil
		@elements[new_element_index] =  @node
	end

	def get_head
	 	@elements.first
  end

	def list_elements
 	  @elements
	end

	def list_count
		@elements.count
	end

	a = LinkList.new(5)
	puts a.add(3)
	puts a.add(23)
	puts "Get list head - #{a.get_head}"
	puts "List elements - #{a.list_elements}"
	puts "List count - #{a.list_count}"
end
