class Employee

  attr_accessor :name, :age, :salary, :manager
  attr_reader :department

@@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
	   @@all
  end

def self.paid_over(num)
  self.all.select {|employee| employee.salary > num}
end

def self.find_by_department(dept)
self.all.find {|employee| employee.manager.department == dept}
end

def tax_bracket
  Employee.all.select do |employee|
    (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000)
  end
end


end
