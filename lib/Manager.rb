class Manager

  attr_accessor :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def employees
    Employee.all.select {|employee| employee.manager == self}
  end

  def self.all
    @@all
  end

  def self.all_departments
    self.all.map {|manager| manager.department}
  end

  def self.average_age
    ages = self.all.map {|manager| manager.age}
    total = 0
    ages.each {|age| total += age}
    total.to_f / ages.length.to_f
  end

  def hire_employee(name, salary)
    employees << Employee.new(name, salary, self)
  end



end
