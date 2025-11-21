# frozen_string_literal: true

require_relative 'node'

# Class that manages a linked list and its nodes, designed for hash map
class LinkedList
  attr_reader :first_node

  def initialize(key, value = nil)
    self.first_node = Node.new(key, value) if key
  end

  def add(key, value)
    return self.first_node = Node.new(key, value) unless first_node

    self.first_node = Node.new(key, value, first_node)
  end

  def in_list?(value)
    !!value_search(value)
  end

  def find(key)
    key_search(key)&.value
  end

  def remove(key)
    node = next_node_search(key: key)

    if node
      old_node = node.next_node.dup
      node.next_node = node.next_node&.next_node
      return old_node
    end

    search = key_search(key)

    [search] if search
  end

  def each_keyval(node = first_node, &block)
    return if node.nil?

    yield node.key, node.value
    each_keyval(node.next_node, &block)
  end

  private

  attr_writer :first_node

  def find_node(node = first_node, &block)
    return if node.nil?
    return node if yield(node)

    find_node(node.next_node, &block)
  end

  def key_search(key)
    find_node { |node| node.key.eql?(key) }
  end

  def value_search(value)
    find_node { |node| node.value.eql?(value) }
  end

  def next_node_search(key: nil, value: nil)
    if key
      find_node { |node| node&.next_node&.key.eql?(key) }
    elsif value
      find_node { |node| node&.next_node&.value.eql?(value) }
    end
  end
end
