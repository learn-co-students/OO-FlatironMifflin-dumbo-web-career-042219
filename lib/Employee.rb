class Employee

	attr_accessor :name, :salary, :manager

	@@employees = []

	def initialize(name, salary, manager)
		@name = name
		@salary = salary
		@manager = manager
		@@employees << self
	end

	def self.all
		@@employees
	end

	def self.paid_over(amount)
		@@employees.select {|employee| employee.salary > amount}
	end

	def self.find_by_department(department)
		Manager.all.find {|manager| manager.department == department}
	end

	def manager_name
		self.manager
	end

	def tax_bracket
		@@employees.select do |employee|
			employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
		end
	end
end
