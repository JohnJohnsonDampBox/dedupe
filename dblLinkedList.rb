Node = Struct.new(:data, :prev, :nexxt)
class LinkedList

  attr_accessor :head, :tail

  def initialize
    @tail = head
    @head = tail
  end

  def append(data)
    new_node = Node.new(data, @tail, nil)
    @head = new_node if head.nil?
    @tail.nexxt = new_node unless @tail.nil?
    @tail = new_node
  end

  def populate(x)
    x.times do
      self.append(rand(100))
    end
  end


  def remove(node)
    if node == @head
      @head = node.nexxt
    end

    node.prev.nexxt = node.nexxt unless node.prev.nil?
    node.nexxt.prev = node.prev unless node.nexxt.nil?
  end

  def print_me
    count = 0
    node = @head
    while !node.nil?
      puts node.data
      node = node.nexxt
      count += 1
    end
    puts "Number of Nodes: #{count}"
  end

  def no_duplicates
    c_node = head
    dupes = []
    while(!c_node.nil?) do
      val = c_node.data
      n_node = c_node.nexxt

      if dupes.include? val
        remove(c_node)
      else
        dupes << val
      end
    c_node = n_node
    end
  end
end

ll = LinkedList.new
ll.populate(400)
ll.print_me
ll.no_duplicates
ll.print_me
