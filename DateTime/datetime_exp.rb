require 'time'
require 'date'
require '../helpers'

# Notes
# -----
# Time.strptime uses a formatting string instead of heuristic


t = Time.now

start_group 'ISO-8601 DateTime'

puts t.iso8601                   # default
puts Date.parse("2012-10-04")    # assumes beginning of day
puts Time.parse("08:00")         # assumes current date

start_group 'Year Blocks'
puts Time.parse("2000-10-31") {|year| year + 10}

start_group 'Using strptime'     # see time.rb notes for 'strptime'
