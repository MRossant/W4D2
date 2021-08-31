class Board

    def initialize
        @board = Array.new(8) { Array.new(8) }
        @null_piece = NullPiece.new
    end

    

    private
    attr_reader :null_piece
end

