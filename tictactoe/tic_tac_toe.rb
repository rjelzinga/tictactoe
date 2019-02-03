class TicTacToe
  PLAYERS = ['o', 'x'].freeze
  def initialize(board)
    @board = board
  end

  def winner
    PLAYERS.each do |player|
      return player if winner?(player)
    end
    return "draw"
  end

  def winner?(player)
    complete_row?(player) || complete_column?(player) || complete_backward_diagonal?(player) || complete_forward_diagonal?(player)
  end

  def complete_row?(player)
    @board.any? { |row| row.all? {|entry| entry == player} }
  end

  def complete_column?(player)
    (0..@board.length - 1).any? {|column_index| @board.all? {|row| row[column_index] == player} }
  end

  def complete_backward_diagonal?(player)
    @board.each_with_index.all? {|row, column_index| row[column_index] == player }
  end

  def complete_forward_diagonal?(player)
    @board.each_with_index.all? {|row, column_index| row[@board.length - column_index - 1] == player }
  end
end