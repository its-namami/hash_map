# frozen_string_literal: true

# Class that manages a single node of a linked list
class Node
  attr_accessor :key, :value, :next_node

  def initialize(key = nil, value = nil, next_node = nil)
    self.key = key
    self.value = value
    self.next_node = next_node
  end
end
