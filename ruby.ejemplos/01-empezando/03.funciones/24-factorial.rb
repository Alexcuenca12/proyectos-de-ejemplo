#!/usr/bin/env ruby

require_relative 'lib/factorial'

numbers = [0, 1, 3, -1, 4]
numbers.each { |number| mostrar_factorial_de number }
