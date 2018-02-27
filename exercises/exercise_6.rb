require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1 = Store.find(1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Xiaofeng", last_name: "Zhang", hourly_rate: 34)

@store2 = Store.find(2)
@store2.employees.create(first_name: "Alex", last_name: "Jiang", hourly_rate: 20)
@store2.employees.create(first_name: "Bob", last_name: "Chun", hourly_rate: 47)

