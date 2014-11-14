class Node
  attr_accessor :data, :next_node
end

class LinkList
  attr_accessor :elements, :index
  def initialize(val)
    @elements = {}
    get_node(val)
    @index = 0
    @elements[@index] = @node
  end

  def get_node(val)
    @node = Node.new # each linked list has a node, 'has a' implying composition.
    @node.data = val
    @node.next_node = nil
  end

  def add(val)s
    get_node(val) #every new element that has to be added should point to a new node correponding to it.
    list_size = @elements.size
    last_element_index = list_size - 1
    @elements[last_element_index].next_node = list_size
    new_element_index = list_size
    @elements[new_element_index] =  @node
  end

  def get_head  
    puts "Get list head - #{@elements.first}"
  end

  def list_elements
    puts "List elements - #{@elements}"
  end

  def list_count
    puts "List count - #{@elements.count}"
  end

  a = LinkList.new(5)
  a.add(3)
  a.add(23)
  a.get_head
  a.list_elements
  a.list_count
  
end
