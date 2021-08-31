require_relative 'employee.rb'

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super
        @subordinates = []
    end



end


a = Manager.new('Ned', 'Founder', 1000000)
b = Manager.new('Darren', 'TA Manager', 78000)
c = Employee.new('Shawna', 'TA', 12000)
d = Employee.new('David', 'TA', 10000)
p b
p '---------'
p c