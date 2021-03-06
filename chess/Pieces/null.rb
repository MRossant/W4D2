require_relative 'piece'
require 'singleton'

class NullPiece < Piece

    include Singleton

    def initialize
        @color = :N
        @symbol = :Nil
    end

    def empty?
        self.is_a?(NullPiece)
    end
end