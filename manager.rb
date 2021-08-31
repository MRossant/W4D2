require_relative 'employee.rb'

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super
        @subordinates = []
    end

    def add_employee(subordinate_node)
        @subordinates << subordinate_node
    end

    private
    attr_reader :subordinates
end


a = Manager.new('Ned', 'Founder', 1000000)
b = Manager.new('Darren', 'TA Manager', 78000)
c = Employee.new('Shawna', 'TA', 12000)
d = Employee.new('David', 'TA', 10000)
p b
p '---------'
p c

# c.add_boss(a)
# # # Ned.subordinates << b
# # # Darren.boss = a
# p c
# p "--------"
# p a



