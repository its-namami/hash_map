# frozen_string_literal: true

require_relative 'lib/hash_map'

hash_map = HashMap.new

hash_map.set('Ai dente', 13)
puts hash_map.get('Ai dente')
