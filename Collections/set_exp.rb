require 'set'
require 'pp'

words = %w{what in the world}
word_set = Set.new( words )

pp words

puts "Does words contain 'what'?"
puts word_set.include? "what"


puts "Set public methods:"
puts Set.public_methods
