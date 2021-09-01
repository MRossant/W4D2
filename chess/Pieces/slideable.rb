module Slideable
    HORIZONTAL_VERTICAL = [
        [-1, 0],
        [1, 0],
        [0, 1],
        [0, -1]
    ].freeze

    DIAGONAL = [
        [1, 1],
        [-1, -1],
        [1, -1],
        [-1, 1]
    ].freeze

    def horizontal_vertical_dirs
        HORIZONTAL_VERTICAL
    end

    def diagonal_dirs
        DIAGONAL
    end

end