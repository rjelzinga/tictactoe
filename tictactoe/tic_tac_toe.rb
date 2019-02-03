class TicTacToe
  PLAYERS = %w[o x].freeze
  UNFINISHED = 'unfinished'
  DRAW = 'draw'

  def initialize(board)
    @board = board
  end

  def winner
    PLAYERS.each do |player|
      return player if winner?(player)
    end

    return UNFINISHED unless finished?
    return DRAW
  end

  private

  def finished?
    # The second condition below, where at least one player has one, is one condition 
    # under which a game would be considered 'finished', even though it is not needed 
    # where this method is being used.
    @board.flatten.all? { |entry| PLAYERS.include?(entry) } || PLAYERS.any? { |player| winner?(player) }
  end

  def winner?(player)
    match_some_row?(player) || match_some_column?(player) || match_backward_diagonal?(player) || match_forward_diagonal?(player)
  end

  def match_some_row?(player)
    @board.any? do |row| 
      row.all? { |entry| entry == player } 
    end
  end

  def match_some_column?(player)
    (0..@board.length - 1).any? do |column_index| 
      @board.all? { |row| row[column_index] == player }
    end
  end

  def match_backward_diagonal?(player)
    @board.each_with_index.all? { |row, column_index| row[column_index] == player }
  end

  def match_forward_diagonal?(player)
    @board.each_with_index.all? { |row, column_index| row[@board.length - column_index - 1] == player }
  end
end