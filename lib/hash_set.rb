# frozen_string_literal: true

require 'debug'

require_relative 'linked_list'

# Class that manages hash set (hash map of only keys)
class HashSet
  LOAD_FACTOR = 0.75

  def initialize
    self.capacity = 16
    self.buckets = Array.new(capacity)
  end

  def set(key)
    set_bucket(bucket_index(key), key)
  end

  def has?(key)
    bucket = buckets[bucket_index(key)]
    !!bucket&.key_in_list?(key)
  end

  def remove(key)
    bucket = buckets[bucket_index(key)]
    removed = bucket.remove(key)

    return removed unless removed.instance_of?(Array)

    buckets[bucket_index(key)] = nil

    removed.first
  end

  def length
    capacity - buckets.count(nil)
  end

  def clear
    self.buckets = Array.new(16)
    self.capacity = 16
  end

  def keys
    buckets.each_with_object([]) do |bucket, arr|
      bucket&.each_keyval { |key, _| arr << key }
    end
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

  def set_bucket(index, key)
    raise IndexError if index.negative? || index >= buckets.length

    if buckets[index]
      buckets[index].add(key)
    else
      buckets[index] = LinkedList.new(key)
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
