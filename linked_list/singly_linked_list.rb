class Node
  attr_accessor :data, :next_node

  def initialize(value=nil)
    @data = value
    @next_node = nil
  end

  def inspect
    data
  end

end

class LinkedList

  attr_reader :head

  def initialize(val)
    @head = get_node(val) 
  end

  def tail
    select do |node|
      node.next_node == nil
    end.first
  end



  def push(val)
    tail.next_node = get_node(val)
    list
  end

  def unshift(val)
    new_node = get_node(val)
    new_node.next_node = @head
    @head = new_node
    list
  end

  def list
    elements = []
    each do |node|
      elements << node
    end
    elements
  end




  def count
    list.count
  end

  

  def each
    current_node = @head
    while current_node != nil
      yield current_node
      current_node = current_node.next_node
    end
  end

  def select
    selected_elements = []
    each do |node|
      selected_elements << node if yield(node)
    end
    selected_elements
  end

  private

  def get_node(val)
    Node.new(val)
  end

end
