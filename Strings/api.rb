require 'pp'
def start_group (name)
  puts "\n#{name}\n-----------------------\n"
end

start_group "chomp"
puts "some string with a new line \n".chomp

start_group "sub"
puts 'noob noob'.sub('noob', 'n00b')

start_group "gsub"
puts 'noob noob'.gsub('noob', 'n00b')

start_group "split"
pp 'some random string'.split

start_group "split w/ parameters"
pp 'some random string'.split('r')

start_group "index"
puts 'some random string'.index('random')

start_group "each_byte"
'some random string'.each_byte { |b| puts b }

start_group "each_line"
'first line\nsecond line'.each_line { |line| puts line }
"first line\nsecond line".each_line { |line| puts line }

start_group "string range[..]"
puts 'abcdefghi'[2..4]
