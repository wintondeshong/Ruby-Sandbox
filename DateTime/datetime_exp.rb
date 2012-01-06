require 'time'
require 'date'
require '../helpers'

t = Time.now

start_group 'ISO-8601 DateTime'

puts t.iso8601                   # default
puts Date.parse("2012-10-04")    # assumes beginning of day
puts Time.parse("08:00")         # assumes current date

start_group 'Year Blocks'
puts Time.parse("") {|year| year + 10}
