class Employee
  attr_reader :name, :salary
  attr_accessor :manager

  @@employees = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    self.class.all << self
  end

  def self.all
    @@employees
  end

  def self.paid_over(salary)
    self.all.select {|employee| employee.salary > salary}
  end

  def self.find_by_department(department)
    self.all.find {|employee| employee.manager.department = department}
  end

  def tax_bracket
    below = self.salary - 1000
    above = self.salary + 1000
    self.class.all.select {|employee| employee.salary >= below && employee.salary <= above}
  end
end
