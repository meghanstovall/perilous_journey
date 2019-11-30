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
      find_tail.next = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

end
