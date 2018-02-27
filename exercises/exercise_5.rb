require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
  sum = Store.sum(:annual_revenue)
  puts "Total revenue is #{sum}"

  average_annual_revenue = sum / Store.count
  puts "Average annual revenue is #{average_annual_revenue}"

  number_of_1M_more_store = Store.where("annual_revenue > 1000000").count
  puts "The number of stores that are generating $1M or more in annual sales is #{number_of_1M_more_store}"


