class Employee

  @@all = []

  attr_accessor :name, :salary, :manager

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(total_salary)
    self.all.select {|employee| employee.salary > (total_salary)}
  end

  def self.find_by_department(department_name)
  self.all.find {|employee| employee.manager.department == (department_name)}

  end

  def tax_bracket
    Employee.all.select {|employee| (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000)}
  end
end
