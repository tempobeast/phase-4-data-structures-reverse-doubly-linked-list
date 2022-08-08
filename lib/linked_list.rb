require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if head.nil?
    curr = head
    if head == tail
      nil
    else
      ptr1 = head
      ptr2 = head.next_node
      ptr1.next_node = nil
      ptr1.prev_node = ptr2
      while ptr2
        ptr2.prev_node = ptr2.next_node
        ptr2.next_node = ptr1
        ptr1 = ptr2
        ptr2 = ptr2.prev_node
      end
      last = tail
      self.tail = head
      self.head = last
      self
    end
  end



end
