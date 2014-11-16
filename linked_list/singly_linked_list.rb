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

  def add(val)
    current_pointer = @head
    while current_pointer.next_node != nil
      puts "Val is - #{val}"
      puts "Curr pointer data:- #{current_pointer.data}"
      puts "Curr pointer, next node:- #{current_pointer.next_node}"
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
    puts "Get Head - #{@head.data} | #{@head.next_node}"
  end

  def list_elements
    list_elements = []
    current_pointer = @head
    while current_pointer != nil
      list_elements << current_pointer.data
      current_pointer = current_pointer.next_node
    end
    list_elements.each do |element| 
      print "#{element} -> "
     end
  end

  def list_count
    count = 0
    current_pointer = @head
    while current_pointer.next_node != nil
      puts "#{current_pointer.data}"
      current_pointer = current_pointer.next_node
      puts "hi"
      count += 1
    end
    count += 1 # to accomodate the count of the last node whose next_node has a value nil and which thereby wasn't counted in the while loop
    puts "List count - #{count}"
  end

  a = LinkList.new(5)
  a.add(3)
  a.add(23)
  a.add(55)
  a.add_beginning(16)
  a.add(39)
  #a.add(23)
  puts a
  puts "a inspect - #{a.inspect}" 
  puts "a head inspect - #{a.head.inspect}"
  puts a.get_head
  puts a.list_count
  puts a.list_elements
   
end
