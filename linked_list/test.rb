class Test1
  def testmeth
  end
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
end  