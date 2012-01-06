require 'pp'
require '../helpers'

# \d       equals [0-9]
# \w       word character (letter, number or underscore)
# \s       match white space (space, tab, newline)
# |        pipe is the OR operator
# \A       matches at the beginning of the string
# \z       matches at the end of the string
# ^        beginning of string or beginning of line
# $        end of string or end of line
# / /m     option to allow multiline searching of expression
# \.$      match the end of the string
# ^        match the beginning of the string

full_name = 'Winton DeShong'

start_group 'Matching Expressions'
puts /.*DeShong/ =~ full_name
puts /DeShong/ =~ full_name
puts /deshong/i =~ full_name

puts /\AMatches beginning of string/ =~ 'Matches beginning of string with regex'

start_group 'Search multiline string'
puts /(.*)/ =~ "Does not match the\nentire multiline string"

start_group 'Match beginning and end of strings'
puts "Matched First Name" if full_name =~ /^Winton/
puts "Matched Last Name" if full_name =~ /DeShong\.$/

