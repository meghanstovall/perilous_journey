gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new('Burke')

    assert_instance_of Node, node
  end

  def test_it_has_a_surname
    node = Node.new('Burke')

    assert_equal 'Burke', node.surname
  end

  def test_next_node_starts_nil
    node = Node.new('Burke')

    assert_equal nil, node.next_node
  end
end
