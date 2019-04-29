require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael Scott", "paper", 52)
idris = Manager.new("Idris Elba", "computers", 49)

jim = Employee.new("Jim Halpert", 60_000, michael)
pam = Employee.new("Pam Beasely", 70_000, idris)
creed = Employee.new("Creed Old", 50_000, michael)
dwight = Employee.new("Dwight Schrute", 55_000, idris)



binding.pry
puts "done"
