# frozen_string_literal: true

require 'debug'

require_relative 'linked_list'

# Class that managess hash map
class HashMap
  LOAD_FACTOR = 0.75

  def initialize
    self.capacity = 16
    self.buckets = Array.new(capacity)
  end

  def hash(string)
    string.each_char.inject(33) { |hash, char| hash * 5381 + char.to_s.ord * 7 }
  end

  def set(key, value)
    hash_key = hash(key)

    set_bucket(hash_key % capacity, [hash_key, value])
  end

  def get(key)
    hash_key = hash(key)
    bucket = buckets[hash_key % capacity]

    bucket&.find(hash_key)
  end

  def has?(key)
    !!get(key)
  end

  private

  def overloaded?
    buckets.select(&:nil?).size < capacity - capacity * LOAD_FACTOR
  end

  def set_bucket(index, key_val)
    raise IndexError if index.negative? || index >= buckets.length

    if buckets[index]
      buckets[index].add(key_val)
    else
      buckets[index] = LinkedList.new(key_val)
    end

    double_capacity if overloaded?
  end

  def double_capacity
    self.capacity *= 2
    old_buckets = buckets.dup
    self.buckets = Array.new(capacity)

    old_buckets.each do |bucket|
      next if bucket.nil?

      bucket.each_keyval { |key, value| set_bucket(key % capacity, [key, value]) }
    end
  end

  attr_accessor :capacity, :buckets
end
