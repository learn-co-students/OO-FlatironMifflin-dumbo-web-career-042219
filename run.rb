require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

robert = Manager.new("Robert California", 52, "Sales")
creed = Manager.new("Creed Bratton", 59, "Warehouse")

jim = Employee.new("Jim Halpert", 42_000, creed)
dwight = Employee.new("Dwight Schrute", 49_000, robert)
pam = Employee.new("Pam Beesly", 53_000, robert)

# warehouse = creed.hire_employee("Sam Rockwell", 62_000)
# sales = robert.hire_employee("Bill Patton", 12_000)
# distribution = robert.hire_employee("Elvis Presley", 46_000)

# Test your code here

#
binding.pry
puts "done"
