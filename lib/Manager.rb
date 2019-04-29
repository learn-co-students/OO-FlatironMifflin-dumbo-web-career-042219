require 'pry'

class Manager

  attr_accessor :name, :department, :age, :employee, :salary

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.manager == self
    end
  end

  def hire_employee(employee, salary)
    employees << Employee.new(employee,salary, self)
  end

  def self.all_departments
    self.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    total = 0
    self.all.map do |manager_age|
      total += manager_age.age
    end
    average = total / self.all.length
  end

end
