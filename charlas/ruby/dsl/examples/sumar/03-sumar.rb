#!/usr/bin/env ruby
puts "Ejemplo   : #{$0}"

def sumar(*args)
  s = 0
  args.each { |i| s+= i }
  s
end

c = sumar 3, 2, 1, 1

puts "Resultado : #{c}"
