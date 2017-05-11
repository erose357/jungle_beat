require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_returns_data
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.append("doop")
  end

  def test_list_head_next_node_is_nil
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_head_data_count
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("threep")

    assert_equal "doop deep threep", list.to_string
  end

  def test_data_in_new_node
    list = LinkedList.new
    list.append("doop")

    assert_equal "deep", list.append("deep")
  end

  def test_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string
  end

end
