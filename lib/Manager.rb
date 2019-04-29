class Manager

  @@all = []

  attr_accessor :name, :department, :age

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

  def hire_employee(newbie, salary)
    Employee.new(newbie, salary, self)
    # self.employees << new_employee
  end

  def self.all_departments
    self.all.map {|manager| manager.department }
  end

  def self.average_age
    all_ages = self.all.map {|manager| manager.age}
    all_ages.inject{ |sum, el| sum + el }.to_f / all_ages.size
  end


end
