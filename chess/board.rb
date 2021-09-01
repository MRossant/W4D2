require_relative 'piece.rb'
require_relative 'null.rb'
require "byebug"

class Board

    pieces = [:Rook, :Knight, :Bishop, :Queen, :King, :Bishop, :Knight, :Rook]
    # set pawns on row 1 and 6

    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        set_grid
    end
    
    def [](pos)
        x, y = pos
        @grid[x][y]
    end
    
    def []=(pos, value)
        x, y = pos
        @grid[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        raise "NoPieceError" if self[start_pos].is_a?(NullPiece)
        raise "EncounteredPieceError" if self[end_pos].is_a?(Piece)

        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end
    
    def set_grid
        
        @grid.each.with_index do |row, r_i|
            row.each_with_index do |col, c_i|
                if r_i == 0 || r_i == 1 || r_i == @grid.length - 1 || r_i == @grid.length - 2
                    # debugger
                    @grid[r_i][c_i] = Piece.new("piece") 
                else
                    # debugger
                    @grid[r_i][c_i] = NullPiece.new("Nil")
                end
            end
        end
    end
end

