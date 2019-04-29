require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bob = Manager.new("Bob", "Finance", 40)
sam = Manager.new("Sam", "PR", 46)

em1 = Employee.new("Em1", 51_000, bob)
em2 = Employee.new("Em2", 60_000, bob)
em3 = Employee.new("Em3", 51_500, sam)

binding.pry
puts "done"
