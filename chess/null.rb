require_relative "piece.rb"

class NullPiece

    attr_reader :name

    def initialize(name)
        @name = name
    end
end