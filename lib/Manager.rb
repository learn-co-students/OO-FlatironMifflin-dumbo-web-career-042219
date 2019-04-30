class Manager

	attr_accessor :name, :department, :age
	@@managers = []

	def initialize(name)
		@name = name
		@department = department
		@age = age
		@employees = []
		@@managers << self
	end

	def self.all
		@@managers
	end

	def self.all_departments
		@@managers.map  {|managers| managers.department}
	end

	def self.average_age
		ages = @@managers.map {|manager| manager.age}
		total = 0
		ages.each {|age| total += age}
		total.to_f / ages.length.to_f
	end

	def employees
		Employee.all.select {|employee| employee.manager == self}
	end

	def hire_employee(name, salary)
		employee = Employee.new(name, salary, self)
		@employees << employee
	end
end
