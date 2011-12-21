require 'xmlsimple'
require 'pp'

data = XmlSimple.xml_in('sample.xml')

puts "XML Document loaded into ruby:"
pp data

puts "XmlSimple method listing:"
pp XmlSimple.public_methods
