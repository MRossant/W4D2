class Employee

    attr_accessor :boss
    
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        # @bonus = bonus
        # # @subordinates = []
    end
    
    def add_boss(node)
        @boss = node
        @boss.add_employee(self)
    end

    def bonus(multiplier)
        if @subordinates.empty? && @boss != nil
            @bonus = salary * multiplier
        end
    end

    private
    attr_reader :name, :title, :salary

end