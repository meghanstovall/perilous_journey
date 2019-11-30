class Node

  attr_reader :surname
  attr_accessor :next_node

  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def to_string
    "The #{surname} family"
  end

end
