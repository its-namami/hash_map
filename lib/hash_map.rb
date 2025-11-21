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

  def set(key, value)
    set_bucket(bucket_index(key), key, value)
  end

  def get(key)
    bucket = buckets[bucket_index(key)]
    bucket&.find(key)
  end

  def has?(key)
    !!get(key)
  end

  def remove(key)
    bucket = buckets[bucket_index(key)]
    bucket.remove(key)
  end

  private

  def bucket_index(string)
    hash(string) % capacity
  end

  def hash(string)
    string.each_char.inject(33) { |hash, char| hash * 5381 + char.to_s.ord * 7 }
  end

  def overloaded?
    buckets.select(&:nil?).size < capacity - capacity * LOAD_FACTOR
  end

  def set_bucket(index, key, value)
    raise IndexError if index.negative? || index >= buckets.length

    if buckets[index]
      buckets[index].add(key, value)
    else
      buckets[index] = LinkedList.new(key, value)
    end

    double_capacity if overloaded?
  end

  def double_capacity
    self.capacity *= 2
    old_buckets = buckets.dup
    self.buckets = Array.new(capacity)

    old_buckets.each do |bucket|
      next if bucket.nil?

      bucket.each_keyval { |key, val| set_bucket(bucket_index(key), key, val) }
    end
  end

  attr_accessor :capacity, :buckets
end
