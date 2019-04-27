class Manager

	attr_accessor :name, :employees, :department, :age

	@@all = []

def initialize(name, department, age)
	@name = name
	@department = department
	@age = age
	@employees = []
	@@all << self
end

def self.all
	@@all
end

# def employees
# 	employees.map do |my_employee|
# 	my_employee.name
# end
# end

def hire_employee(name, salary)
	new_employee = Employee.new(name, salary, self)
	@employees << new_employee
end

def self.all_departments
	@@all.map do |all|
		all.department
end
end

def self.average_age
	all_ages =	all.map do |all|
	all.age 
end
all_ages.sum.fdiv(all_ages.size)
end

end
