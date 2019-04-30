require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new("Michel Scott")
michael.age = 40
michael.department = "Regional Manager"

dwight = Manager.new("Dwight Schrewt")
dwight.age = 45
dwight.department = "Assistant Regional Manager"

jim = Employee.new("Jim Halpert", 750, michael)
# jim.salary = 750
# jim.manager = michael

pam = Employee.new("Pam", 600, dwight)
# pam.salary = 600
# pam.manager = dwight

angela = Employee.new("Angela", 7200, dwight)
# angela.salary = 7200
# angela.manager = dwight

creed = Employee.new("Creed", 705, michael)
# creed.salary = 705
# creed.manager = michael



binding.pry
puts "done"
