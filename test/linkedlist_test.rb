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

    assert_instance_of Node, list.append("West")
  end

  def test_next_node_is_nil
    list = LinkedList.new
    node = Node.new("West")
    list.append("West")

    assert_equal nil, list.head.next_node
  end

  def test_list_count_is_one
    list = LinkedList.new
    node = Node.new("West")
    list.append("West")

    assert_equal 1, list.count
  end

  def test_the_list_can_print_nodes_value
    list = LinkedList.new
    node = Node.new("West")
    list.append("West")

    assert_equal "The West family", list.head.to_string
  end

end
