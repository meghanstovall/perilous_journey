gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linkedlist'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_starts_as_nil
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_adds_data_to_list
    list = LinkedList.new
    node = Node.new("West")

    assert_equal node, list.append("West")
  end
end
