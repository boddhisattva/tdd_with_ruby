class Node
	attr_accessor :data, :next_node
end

class LinkList
	attr_accessor :elements, :index
	def initialize(val)
		@elements = {}
		@node = Node.new # each linked list has a node, 'has a' implying composition.
		@node.data = val
		@index = 0
		@node.next_node = nil
		@elements[@index] = @node
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
		puts "Get list head - #{@elements.first}"
	end

	def list_elements
		puts "List elements - #{@elements}"
		@elements
	end

	def list_count
		puts "List count - #{@elements.count}"
    puts "test**"
	end

	a = LinkList.new(5)
	puts a.add(3)
	puts a.add(23)
	a.get_head
	a.list_elements
	a.list_count
	
end