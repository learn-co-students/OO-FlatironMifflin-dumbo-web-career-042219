class Manager

  attr_accessor :name, :age, :department

  @@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @@all << self
  end

  def employees
      Employee.all.select {|employee| employee.manager == self }
  end

  def self.all
	   @@all
  end

  def hire_employee(name, salary)
    employees << Employee.new(name, salary, self)
  end

  def self.all_departments
  @@all.map do |all|
		all.department
    end
  end

  def self.average_age
    total = 0
    self.all.map {|manager| total += manager.age }
    average = total.to_f / self.all.length
  end

end
