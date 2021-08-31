require_relative 'piece.rb'
class Board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        @null_piece = nil
    end

    def [](pos)
        x, y = pos
        @board[x][y]
    end

    def []=(pos, value)
        x, y = pos
        @board[x][y] = value
    end

    def method_name
        
    end



    private
    attr_reader :null_piece
end

