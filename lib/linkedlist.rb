require './lib/node'

class LinkedList

  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    if @head
      find_tail.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def to_string
    current_node = @head
    until current_node.surname == nil do
      "The #{current_node.surname} family, "
      current_node = current_node.next_node
    end
  end
end
