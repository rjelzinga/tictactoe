defmodule TicTacToe do
  def winner(board) do 
    row1 = Enum.at(board, 0)
    row2 = Enum.at(board, 1)
    row3 = Enum.at(board, 2)

    cond do
      # Row Checks
      Enum.at(row1, 0) == "o" && Enum.at(row1, 1) == "o" && Enum.at(row1, 2) == "o" -> "o"
      Enum.at(row2, 0) == "o" && Enum.at(row2, 1) == "o" && Enum.at(row2, 2) == "o" -> "o"
      Enum.at(row3, 0) == "o" && Enum.at(row3, 1) == "o" && Enum.at(row3, 2) == "o" -> "o"
      Enum.at(row1, 0) == "x" && Enum.at(row1, 1) == "x" && Enum.at(row1, 2) == "x" -> "x"
      Enum.at(row2, 0) == "x" && Enum.at(row2, 1) == "x" && Enum.at(row2, 2) == "x" -> "x"
      Enum.at(row3, 0) == "x" && Enum.at(row3, 1) == "x" && Enum.at(row3, 2) == "x" -> "x"

      # Column Checks

      Enum.at(row1, 0) == "o" && Enum.at(row2, 0) == "o" && Enum.at(row3, 0) == "o" -> "o"
      Enum.at(row1, 1) == "o" && Enum.at(row2, 1) == "o" && Enum.at(row3, 1) == "o" -> "o"
      Enum.at(row1, 2) == "o" && Enum.at(row2, 2) == "o" && Enum.at(row3, 2) == "o" -> "o"
      Enum.at(row1, 0) == "x" && Enum.at(row2, 0) == "x" && Enum.at(row3, 0) == "x" -> "x"
      Enum.at(row1, 1) == "x" && Enum.at(row2, 1) == "x" && Enum.at(row3, 1) == "x" -> "x"
      Enum.at(row1, 2) == "x" && Enum.at(row2, 2) == "x" && Enum.at(row3, 2) == "x" -> "x"

      # Diagonal Checks

      Enum.at(row1, 0) == "o" && Enum.at(row2, 1) == "o" && Enum.at(row3, 2) == "o" -> "o"
      Enum.at(row1, 2) == "o" && Enum.at(row2, 1) == "o" && Enum.at(row3, 0) == "o" -> "o"
      Enum.at(row1, 0) == "x" && Enum.at(row2, 1) == "x" && Enum.at(row3, 2) == "x" -> "x"
      Enum.at(row1, 2) == "x" && Enum.at(row2, 1) == "x" && Enum.at(row3, 0) == "x" -> "x"

      true -> "draw"
    end
  end
end
