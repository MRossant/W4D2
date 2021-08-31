require_relative 'employee.rb'

class Employee
    # attr_reader :name, :title, :salary
    def initialize(name, title, salary, boss = nil)
        @name = name# Employee.new(name)
        @title = title
        @salary = salary
        @boss = boss
        #@bonus = bonus
        #@subordinates = []
    end

    #def boss=(boss)
    #boss = boss
    #boss.adding employee method (self)

    def bonus(multiplier)
        if @subordinates.empty? && @boss != nil
            @bonus = salary * multiplier
        end
    end

    private
    attr_reader :name, :title, :salary
    attr_accessor :boss

end

