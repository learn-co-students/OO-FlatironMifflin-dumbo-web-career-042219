class Manager
  attr_reader :name, :age
  attr_accessor :department

  @@managers = []
  
  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    self.class.all << self
  end

  def self.employees
    Employees.all.select {|employee| employee.manager == self}
  end

  def self.all
    @@managers
  end

  def hire_employee(name, salary)
    employee = Employee.new(name, salary)
    employee.manager = self
  end

  def self.all_departments
    self.all.map {|manager| manager.department}
  end

  def self.average_age
    arr = self.all.map {|manager| manager.age}

    arr.sum/(arr.count * 1.0)
  end
end
