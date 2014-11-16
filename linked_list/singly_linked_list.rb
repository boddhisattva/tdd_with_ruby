class Node
  attr_accessor :data, :next_node
end

class LinkList
  attr_accessor :head
  def initialize(val)
    @head = get_node(val)
  end

  def get_node(val)
    @node = Node.new # each linked list has a node, 'has a' implying composition.
    @node.data = val
    @node.next_node = nil
    @node
  end

  def add_in_end(val)
    current_pointer = @head
    while current_pointer.next_node != nil
      current_pointer = current_pointer.next_node
    end
    current_pointer.next_node = get_node(val)
  end

  def add_beginning(val)
    new_node = get_node(val)    
    new_node.next_node = @head
    @head = new_node
  end

  def get_head  
    puts "Head of linked list - #{@head.data} | #{@head.next_node}"
  end

  def list_elements
    elements = []
    current_pointer = @head
    while current_pointer != nil
      elements << current_pointer.data
      current_pointer = current_pointer.next_node
    end
    puts  "Linked List elements - #{elements.join("->")}" #new learning wrt usage of join making way to add a character separating each of the elements in an array
  end

  def list_count
    count = 0
    current_pointer = @head
    while current_pointer != nil
      current_pointer = current_pointer.next_node
      count += 1
    end
    puts "List size - #{count}"
  end

  a = LinkList.new(5)
  a.add_in_end(3)
  a.add_in_end(23)
  a.add_in_end(55)
  a.add_beginning(16)
  a.add_in_end(39)
  a.get_head
  a.list_count
  a.list_elements
   
end
