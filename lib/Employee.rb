class Employee

attr_accessor :name, :salary, :manager

@@all = []

	def initialize(name, salary, manager)
		@name = name
		@salary = salary	
		@manager = manager
		@@all << self
	end

	def manager_name
		self.manager.name
	end

	def self.all
		@@all
	end

	def self.paid_over(amount)
	arr = Employee.all.select do |employee|
		  employee.salary >= amount
	end
	arr.map do  |empl| 
	empl.name 
	end
end

	def self.find_by_department(search)
	arr =	Manager.all.find do |manager|
			manager.department == search
	end
	arr.name
	end

	def tax_bracket
	# new_arr = [(self.salary - 1000) ... (self.salary + 1000)]
	@@all.select do |tax_employee|
	if tax_employee.salary.between?((self.salary - 1000),(self.salary + 1000))
		tax_employee.name
	end
end
end
end