class Employee

    def initialize(name, title, salary, boss = nil)
        @name = Employee.new(name)
        @title = title
        @salary = salary
        @boss = boss
        @bonus = bonus
        @subordinates = []
    end

    def bonus(multiplier)
        if @subordinates.empty? && @boss != nil
            @bonus = salary * multiplier
        end
    end

    private
    attr_reader :name, :title, :salary
    attr_accessor :boss

end