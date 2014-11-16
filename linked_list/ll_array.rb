class Node
  attr_accessor :data, :next_node
end

# inlcude Enumerable
class LinkList < Array
  # attr_accessor :elements, :index, :node
  attr_accessor :data, :next_node, :index

  def initialize(val)
    # @elements = {}
    # get_node(val)
    # @index = 0
    # @elements[@index] = @node
    # index = 0
    self << val
    @next_node = nil
    # self[index] = data
    # self[data] = next_node
    @data = []
    @next_node = []
    @index = 0
    @data[@index] = val
    @next_node[@index] = nil
  end

  def get_node(val)
    @node = Node.new # each linked list has a node, 'has a' implying composition.
    @node.data = val
    @node.next_node = nil
  end

  def add_node(val)
    # @node = Node.new
    # @node.data = val
    @index += 1
    @data[index] = val

    @next_node[@index] = nil
    @next_node[@index-1] = index

    # puts "in add method"
    # puts "Val of Next node - #{next_node}"
    # puts "Val of data - #{data}"

  end

  # def add_beginning #wip , realized that I have to shift the elements if I add at the beginning. Stopped with this approach
  #   @index += 1     # after this realization.. 
  #   @next_node[@index] = nil
  #   indx = 0
  #   @data[in]
  # end

  def add(val)
    get_node(val) #every new element that has to be added should point to a new node correponding to it.
    list_size = @elements.size
    last_element_index = list_size - 1
    @elements[last_element_index].next_node = list_size
    new_element_index = list_size
    @elements[new_element_index] =  @node
  end

  def get_head  
    puts "Get list head - #{@data.first} | #{@next_node.first}"
  end

  def list_elements
    # puts "List elements"
    # puts "Data - #{@data}"
    # puts "Next node - #{next_node}"
    puts "Linked list elements - "
    indx = 0
    linked_list_size = @data.size
    while indx <= linked_list_size - 1
      puts "#{@data[indx]} | #{@next_node[indx]} ->"
      indx +=1 
    end

    # while i
    # self.each_with_index { |data, next_node, index|
    #   puts "#{data.inspect} #{next_node.inspect}"
    #  # "#{item} | #{next_node} ->" 
    # }
  end

  def list_count
    puts "Size of list - #{data.size}"
    # puts "List count - #{count}"
  end

  # a = LinkList.new(5)
  # a.add(3)
  # a.add(23)
  # a.get_head
  # a.list_elements
  # a.list_count
  
  b = LinkList.new(7)

  # puts b.node
  # puts b.node.data
  # puts b.node.last
  # b.add_node(8)

  # puts b.first.data
  b.add_node(9)
  b.get_head
  b.list_elements
  b.list_count

  # puts b
  # puts b.inspect
  # puts b.data
  # puts b.next_node
  # puts b.first.object_id  
end
