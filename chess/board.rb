require_relative 'pieces'
require "byebug"

class Board
    
    # set pawns on row 1 and 6
    #pieces.each { |class| class.new()}
    
    attr_reader :grid
    
    def initialize
        # @grid = Array.new(8) { Array.new(8, NullPiece.instance) }
        set_grid
        # @nil_piece = NullPiece.instance
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
        raise "EncounteredPieceError" if self[end_pos].color == self[start_pos].color
        
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        self[start_pos].pos, self[end_pos].pos = self[end_pos].pos, self[start_pos].pos
        # self[start_pos].pos = self[end_pos].pos
        # self[end_pos].pos = self[start_pos].pos
    end
    
    def set_grid
        pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        @grid = Array.new(8) { Array.new(8, NullPiece.instance) }
        @grid.each.with_index do |row, r_i|
            row.each_with_index do |col, c_i|
                piece = pieces[c_i]
                case r_i
                when 0
                    @grid[r_i][c_i] = piece.new('white', self, [r_i, c_i])
                when 7
                    @grid[r_i][c_i] = piece.new('black', self, [r_i, c_i])
                when 1
                    @grid[r_i][c_i] = Pawn.new('white', self, [r_i, c_i])
                when 6
                    @grid[r_i][c_i] = Pawn.new('black', self, [r_i, c_i])
                end
                
            end
        end
    end
end

