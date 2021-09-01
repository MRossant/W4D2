require_relative 'sliding_pieces'

class Bishop
    include Slideable
    def initialize(value)
        @value = value
    end
end
