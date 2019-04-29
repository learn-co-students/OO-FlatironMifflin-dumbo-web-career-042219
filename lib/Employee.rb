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

  def self.paid_over(indiv_salary) #FIXNUM
    self.all.select {|employee| employee.salary > indiv_salary}
  end

  def self.find_by_department(department) #STRING
    self.all.find {|employee| employee.manager.department == department}
  end

  def tax_bracket
    Employee.all.select {|employee| employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000}
  end

end
