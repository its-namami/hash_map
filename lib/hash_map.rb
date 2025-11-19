# frozen_string_literal: true

require 'debug'

# Class that managess hash map
class HashMap
  LOAD_FACTOR = 0.75

  def initialize
    self.capacity = 16
    self.buckets = Array.new(capacity)
  end

  def hash(string)
    string.each_char.inject(33) { |hash, char| hash * 5381 + char.to_s.ord }
  end

  def set(key, value)
    hash_key = hash(key)

    set_bucket(hash_key % capacity, [hash_key, value])
  end

  def get(key)
    hash_key = hash(key)

    find = buckets.find { |bucket| !bucket.nil? && bucket[0].eql?(hash_key) }

    find ? find[1] : nil
  end

  private

  def set_bucket(index, key_val)
    raise IndexError if index.negative? || index >= buckets.length

    double_capacity if buckets.size > capacity / LOAD_FACTOR

    buckets[index] = key_val
  end

  def double_capacity
    self.capacity *= 2
    old_buckets = buckets.dup
    self.buckets = Array.new(capacity)

    old_buckets.each do |bucket|
      set_bucket(bucket[0] % capacity, bucket[1])
    end
  end

  attr_accessor :capacity, :buckets
end
