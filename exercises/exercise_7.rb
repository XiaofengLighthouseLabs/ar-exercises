require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


puts "Please input a store name:"
@user_store = gets.chomp

user_store = Store.create(name: @user_store)
puts (user_store.valid?)
puts (user_store.errors.full_messages) unless user_store.save




