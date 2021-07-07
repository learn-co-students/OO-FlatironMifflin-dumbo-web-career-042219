require 'pry'

class Employee

  attr_accessor :name, :salary, :manager

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

  def self.paid_over(threshold)
    self.all.select do |comp|
      comp.salary >= threshold
    end
  end

  def self.find_by_department(department)
    self.all.find do |employee|
      employee.manager.department == department
    end
  end

  def manager_name
    self.manager.name
  end

  def tax_bracket
    Employee.all.select do |employee| (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000)
    end
  end

end
