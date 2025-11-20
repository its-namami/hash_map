# frozen_string_literal: true

require_relative 'node'

# Class that manages a linked list and its nodes, designed for hash map
class LinkedList
  attr_reader :first_node

  def initialize(value = nil)
    self.first_node = Node.new(value) if value
  end

  def add(value)
    return self.first_node = Node.new(value) unless first_node

    self.first_node = Node.new(value, first_node)
  end

  def in_list?(value)
    return false unless first_node

    list_search(value)
  end

  # Speial method for key-value array search
  def find(key)
    return unless first_node

    special_search(key)
  end

  def each_keyval(node = first_node)
    until node.nil?
      yield node.value
      node = node.next_node
    end
  end

  private

  attr_writer :first_node

  def special_search(key, node = first_node)
    return if node.nil?
    return node.value.last if node.value.first.eql?(key)

    special_search(key, node.next_node)
  end

  def list_search(value, node = first_node)
    return false if node.nil?
    return true if node.value.eql?(value)

    list_search(value, node.next_node)
  end
end
