# limited quote literal interpretation

quote_literal = %q{He said, "this" and she said, "that"}
puts quote_literal

quote_literal_2 = %q(He said, "this" and she said, "that")
puts quote_literal_2

quote_literal_3 = %q<He said, "this" and she said, "that">
puts quote_literal_3

# full quote literal interpretation

quote_literal_full = %Q{again #{quote_literal}}
puts quote_literal_full

quote_literal_full_multiline = %Q{again
but
on multiple
lines
#{quote_literal}}
puts quote_literal_full_multiline

# here document
heres_one = <<EOF
Using a here document to
create a lenghty string that
spans multiple lines
EOF

puts heres_one
