require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

#adding employees associated with the different stores. knows they are associated becuase of modifying the class definitions

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Goolash", last_name: "Pumpkin", hourly_rate: 20)
@store1.employees.create(first_name: "Hello", last_name: "There", hourly_rate: 15)

@store2.employees.create(first_name: "Yum", last_name: "Food", hourly_rate: 100)
@store2.employees.create(first_name: "Cry", last_name: "Alone", hourly_rate: 10)
@store2.employees.create(first_name: "Sing", last_name: "Anthem", hourly_rate: 25)
