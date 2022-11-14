require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#displaying error messages back to the user after they attempt to create a store with incomplete info

puts "Please provide a name for your store :)"
store_name = gets.chomp

new_store = Store.create(name: store_name)
mistakes =  new_store.errors.full_messages

mistakes.each { |mistake| 
  puts mistake
}

