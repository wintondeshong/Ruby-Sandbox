require 'pp'

# \d       equals [0-9]
# \w       word character (letter, number or underscore)
# \s       match white space (space, tab, newline)
# |        pipe is the OR operator

puts /.*DeShong/ =~ 'Winton DeShong'
puts /DeShong/ =~ 'Winton DeShong'
puts /deshong/i =~ 'Winton DeShong'

