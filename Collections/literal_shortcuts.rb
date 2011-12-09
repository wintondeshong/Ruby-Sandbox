require 'pp'

# Literals

array_of_single_word_elements_long_hand = [ 'winton', 'deshong' ]
array_of_single_word_elements_short_hand = %w{ winton deshong }

puts "long hand count: #{array_of_single_word_elements_long_hand.count}"
puts "long hand object:"
pp array_of_single_word_elements_long_hand
puts "short hand count: #{array_of_single_word_elements_short_hand.count}"
puts "short hand object:"
pp array_of_single_word_elements_short_hand


# Hashes

hash_with_hash_rockets = { "first_name" => 'winton', "last_name" => 'deshong' }
hash_with_symbols = { :first_name => 'winton', :last_name => 'deshong' }
hash_simplified = { first_name: 'winton', last_name: 'deshong' }

puts "hash_with_hash_rockets object:"
pp hash_with_hash_rockets
puts "hash_with_symbols object:"
pp hash_with_symbols
puts "hash_simplified object:"
pp hash_simplified

# Array/Hash Method Usage

def optional_args( *args )
  args.each { |arg| puts arg }
end
puts "call optional_args:"
optional_args( 'winton', 'deshong', 'ann', 'sassaman' )

def splat_automatic_array_creation( *names )
  puts "#{names.join(', ')}"
end
puts "call splat_automatic_array_creation:"
splat_automatic_array_creation( 'winton', 'ann' )

# Iteration

puts "wrong way of iteration"
word_list = %w{ Winton pwns n00bs }
for i in 0..word_list.size
  puts word_list[i]
end

puts "correct way of iteration"
word_list.each { |word| puts word }

puts "key value pair block iteration"
key_value_pair = { propertyName: 'propertyValue', propertyName2: 'propertyValue2' }
key_value_pair.each { |key, value| puts "key[#{key}] = #{value}" }

puts "add 2 to everything"
pp [100, 30, 25, 2].map { |num| num + 2 }




