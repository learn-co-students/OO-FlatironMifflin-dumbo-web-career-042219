require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael_scott = Manager.new("Michael Gary Scott", "Sales - Scranton", 57)
karen_filippelli = Manager.new("Karen Filippelli", "Sales - Stamford", 43)

dwight_schrute = Employee.new("Dwight Kurt Schrute III", 60000, michael_scott)
jim_halpert = Employee.new("James 'Jim' Halpert", 59000, karen_filippelli)
creed_bratton = Employee.new("Creed Bratton", 50000, michael_scott)
Employee.new("Andrew 'Andy' Baines Bernard", 51000, karen_filippelli)

binding.pry
puts "done"
