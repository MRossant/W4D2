require_relative 'piece.rb'
require_relative 'null.rb'
require "byebug"

class Board

    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        set_board
    end
    
    def [](pos)
        x, y = pos
        @board[x][y]
    end
    
    def []=(pos, value)
        x, y = pos
        @board[x][y] = value
    end
    
    def set_board
        @board.each.with_index do |row, r_i|
            row.each_with_index do |col, c_i|
                if r_i == 0 || r_i == 1 || r_i == @board.length - 1 || r_i == @board.length - 2
                    debugger
                    @board[r_i][c_i] = Piece.new("piece") 
                else
                    debugger
                    @board[r_i][c_i] = NullPiece.new("Nil")
                end
            end
        end
    end
end

