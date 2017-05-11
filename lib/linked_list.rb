require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        counter += 1
      end
    end
    counter
  end

  def to_string
    words = []
    words << head.data
    current = @head
    until current.next_node.nil?
      current = current.next_node
      words << current.data
    end
    words.join(" ")
  end

  def prepend(data)
    old_head = @head
    @head = Node.new(data)
    @head.next_node = old_head
  end

end
