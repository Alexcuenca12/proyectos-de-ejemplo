#!/usr/bin/env ruby

puts "[INFO] lambda greet"
#
# Function: greet(name) = puts "Hello #{name"
#
greet = lambda { |name| puts "Hello #{name}!" }

greet.call("Obiwan")
greet["Yoda"]
greet.==="Vader"

puts "\n[INFO] lambda double"
#
# Function:   double(x) = number * 2
#
double = ->(number) { number * 2 }

puts double.call(3)
puts double[16]
