require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

# Scenario: We want to be able to give employees a password (string)
#  that is auto-generated when their record is created in the database

p Employee.find_by(id: 1).password

