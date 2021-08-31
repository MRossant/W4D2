require_relative 'employee.rb'

class Manager < Employee
    attr_reader :subordinates

    def initialize(name, title, salary, boss = nil)
        super
        @subordinates = []
    end

    def add_employee(subordinate_node)
        @subordinates << subordinate_node
    end

    def bonus(multiplier)
        sub_salary = 0
        arr = [self]
        until arr.empty? 
            temp = arr.shift
            if !temp.subordinates.empty? 
                sub_salary += temp.total_subordinate_salary 
            end
            temp.subordinates.each { |sub| arr << sub }
                
        end
        # until self.subordinates.empty?
        #     sub_salary += self.total_subordinate_salary * multiplier
        # end
        sub_salary * multiplier
    end
    #bonus = (total salary of all sub-employees) * multiplier

    def total_subordinate_salary
        sum = 0
        @subordinates.each do |sub|
            sum += sub.salary 
        end
        sum
    end

    private
end


a = Manager.new('Ned', 'Founder', 1000000)
b = Manager.new('Darren', 'TA Manager', 78000)
c = Employee.new('Shawna', 'TA', 12000)
d = Employee.new('David', 'TA', 10000)
b.add_boss(a)
c.add_boss(b)
d.add_boss(b)


# p b
# p '---------'
# p c
p a.bonus(5)
p b.bonus(4)
p d.bonus(3)
# c.add_boss(a)
# # # Ned.subordinates << b
# # # Darren.boss = a
# p c
# p "--------"
# p a



