# frozen_string_literal: true

require 'debug'

require_relative 'lib/hash_map'

hash_map = HashMap.new

puts '#####TESTS#####'
hash_map.set('Alice Johnson', 45)
puts hash_map.get('Alice Johnson') == 45 ? 'Correct' : 'False'
hash_map.set('Bob Williams', 92)
puts hash_map.get('Bob Williams') == 92 ? 'Correct' : 'False'
hash_map.set('Charlie Brown', 18)
puts hash_map.get('Charlie Brown') == 18 ? 'Correct' : 'False'
hash_map.set('David Smith', 61)
puts hash_map.get('David Smith') == 61 ? 'Correct' : 'False'
hash_map.set('Eve Davis', 33)
puts hash_map.get('Eve Davis') == 33 ? 'Correct' : 'False'
hash_map.set('Frank Miller', 87)
puts hash_map.get('Frank Miller') == 87 ? 'Correct' : 'False'
hash_map.set('Grace Wilson', 14)
puts hash_map.get('Grace Wilson') == 14 ? 'Correct' : 'False'
hash_map.set('Henry Moore', 55)
puts hash_map.get('Henry Moore') == 55 ? 'Correct' : 'False'
hash_map.set('Ivy Taylor', 29)
puts hash_map.get('Ivy Taylor') == 29 ? 'Correct' : 'False'
hash_map.set('Jack Anderson', 78)
puts hash_map.get('Jack Anderson') == 78 ? 'Correct' : 'False'
hash_map.set('Kelly Thomas', 11)
puts hash_map.get('Kelly Thomas') == 11 ? 'Correct' : 'False'
hash_map.set('Liam Jackson', 66)
puts hash_map.get('Liam Jackson') == 66 ? 'Correct' : 'False'
hash_map.set('Mia White', 49)
puts hash_map.get('Mia White') == 49 ? 'Correct' : 'False'
hash_map.set('Noah Harris', 95)
puts hash_map.get('Noah Harris') == 95 ? 'Correct' : 'False'
hash_map.set('Olivia Martin', 22)
puts hash_map.get('Olivia Martin') == 22 ? 'Correct' : 'False'
hash_map.set('Paul Garcia', 70)
puts hash_map.get('Paul Garcia') == 70 ? 'Correct' : 'False'
hash_map.set('Quinn Rodriguez', 17)
puts hash_map.get('Quinn Rodriguez') == 17 ? 'Correct' : 'False'
hash_map.set('Ryan Lewis', 83)
puts hash_map.get('Ryan Lewis') == 83 ? 'Correct' : 'False'
hash_map.set('Sophia Clark', 38)
puts hash_map.get('Sophia Clark') == 38 ? 'Correct' : 'False'
hash_map.set('Thomas King', 52)
puts hash_map.get('Thomas King') == 52 ? 'Correct' : 'False'
hash_map.set('Ursula Allen', 9)
puts hash_map.get('Ursula Allen') == 9 ? 'Correct' : 'False'
hash_map.set('Victor Young', 41)
puts hash_map.get('Victor Young') == 41 ? 'Correct' : 'False'
hash_map.set('Willow Hernandez', 76)
puts hash_map.get('Willow Hernandez') == 76 ? 'Correct' : 'False'
hash_map.set('Xavier Scott', 15)
puts hash_map.get('Xavier Scott') == 15 ? 'Correct' : 'False'
hash_map.set('Yara Green', 80)
puts hash_map.get('Yara Green') == 80 ? 'Correct' : 'False'
hash_map.set('Zane Baker', 27)
puts hash_map.get('Zane Baker') == 27 ? 'Correct' : 'False'
hash_map.set('Aaron Nelson', 74)
puts hash_map.get('Aaron Nelson') == 74 ? 'Correct' : 'False'
hash_map.set('Bella Carter', 30)
puts hash_map.get('Bella Carter') == 30 ? 'Correct' : 'False'
hash_map.set('Caleb Mitchell', 88)
puts hash_map.get('Caleb Mitchell') == 88 ? 'Correct' : 'False'
hash_map.set('Daisy Perez', 43)
hash_map.set('Ethan Roberts', 97)
puts hash_map.get('Ethan Roberts') == 97 ? 'Correct' : 'False'
hash_map.set('Fiona Turner', 19)
puts hash_map.get('Fiona Turner') == 19 ? 'Correct' : 'False'
hash_map.set('George Phillips', 64)
puts hash_map.get('George Phillips') == 64 ? 'Correct' : 'False'
hash_map.set('Hannah Campbell', 5)
puts hash_map.get('Hannah Campbell') == 5 ? 'Correct' : 'False'
hash_map.set('Isaac Parker', 58)
puts hash_map.get('Isaac Parker') == 58 ? 'Correct' : 'False'
hash_map.set('Jasmine Evans', 35)
puts hash_map.get('Jasmine Evans') == 35 ? 'Correct' : 'False'
hash_map.set('Kevin Edwards', 82)
puts hash_map.get('Kevin Edwards') == 82 ? 'Correct' : 'False'
hash_map.set('Laura Collins', 12)
puts hash_map.get('Laura Collins') == 12 ? 'Correct' : 'False'
hash_map.set('Marcus Stewart', 69)
puts hash_map.get('Marcus Stewart') == 69 ? 'Correct' : 'False'
hash_map.set('Nora Sanchez', 47)
puts hash_map.get('Nora Sanchez') == 47 ? 'Correct' : 'False'
hash_map.set('Oscar Morris', 90)
puts hash_map.get('Oscar Morris') == 90 ? 'Correct' : 'False'
hash_map.set('Penny Rogers', 24)
puts hash_map.get('Penny Rogers') == 24 ? 'Correct' : 'False'
hash_map.set('Quentin Reed', 71)
puts hash_map.get('Quentin Reed') == 71 ? 'Correct' : 'False'
hash_map.set('Ruby Cook', 16)
puts hash_map.get('Ruby Cook') == 16 ? 'Correct' : 'False'
hash_map.set('Sam Bailey', 85)
puts hash_map.get('Sam Bailey') == 85 ? 'Correct' : 'False'
hash_map.set('Tina Bell', 39)
puts hash_map.get('Tina Bell') == 39 ? 'Correct' : 'False'
hash_map.set('Ulysses Murphy', 54)
puts hash_map.get('Ulysses Murphy') == 54 ? 'Correct' : 'False'
hash_map.set('Violet Cox', 10)
puts hash_map.get('Violet Cox') == 10 ? 'Correct' : 'False'
hash_map.set('Wyatt Rivera', 42)
puts hash_map.get('Wyatt Rivera') == 42 ? 'Correct' : 'False'
hash_map.set('Zara Cooper', 77)
puts hash_map.get('Zara Cooper') == 77 ? 'Correct' : 'False'
hash_map.set('Adam Gray', 13)
puts hash_map.get('Adam Gray') == 13 ? 'Correct' : 'False'
puts hash_map.remove('Adam Gray')
puts hash_map.has?('Adam Gray')
puts hash_map.remove('Daisy Perez')
puts hash_map.get('Daisy Perez') == 43 ? 'False' : 'Correct'
puts hash_map.remove('Wyatt Rivera')
puts hash_map.has?('Wyatt Rivera')
