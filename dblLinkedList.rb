Node = Struct.new(:data, :nexxt)

list = Node.new('head', nil)

def linked_list(data, node)
  Node.new(data, node)
end

def recur_print(list)
  p list.data
  recur_print(list.nexxt) unless list.nexxt == nil
end

# 1.times {
#   i = rand(100)
#   list = linked_list(i, list)
#   p list
# }
#list
#recur_print(list)
class LinkedList < Node
  attr_accessor :data, :node, :list
  def initialize(data=nil, node=nil)
    @data = data
    @node = node
    @list = Node.new('head', nil)
  end

  def add(data)
    @list = Node.new(data, @list)
  end

  def populate(num)
    num.times {
      i = rand(100)
      self.add(i)
    }
  end

  def linked_list(data, node)
    Node.new(data, node)
  end

  def print_me
    p list
  end
end

ll = LinkedList.new()
ll.populate(10)
#ll.recur_print(self.list)
ll.print_me
ll.add(23333333)
ll.print_me
