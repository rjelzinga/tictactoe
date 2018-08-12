defmodule TicTacToeTest do
  use ExUnit.Case

  describe "rows" do
    test "returns the correct winner when match found on the first row" do
      board_o = [
        ["o", "o", "o"],
        ["x", "x", " "],
        [" ", " ", " "]
      ]

      board_x = [
        ["x", "x", "x"],
        ["o", "o", " "],
        ["o", " ", " "]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end

    test "returns the correct winner when match found on the second row" do
      board_o = [
        ["x", "x", " "],
        ["o", "o", "o"],
        [" ", " ", " "]
      ]

      board_x = [
        ["o", "o", " "],
        ["x", "x", "x"],
        ["o", " ", " "]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end

    test "returns the correct winner when match found on the third row" do
      board_o = [
        ["x", "x", " "],
        [" ", " ", " "],
        ["o", "o", "o"]
      ]

      board_x = [
        ["o", "o", " "],
        ["o", " ", " "],
        ["x", "x", "x"]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end
  end

  describe "columns" do
    test "returns the correct winner when match found on the first column" do
      board_o = [
        ["o", "x", " "],
        ["o", "x", " "],
        ["o", " ", " "]
      ]

      board_x = [
        ["x", "o", " "],
        ["x", "o", " "],
        ["x", " ", "o"]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end

    test "returns the correct winner when match found on the second column" do
      board_o = [
        ["x", "o", " "],
        ["x", "o", " "],
        [" ", "o", " "]
      ]

      board_x = [
        ["o", "x", " "],
        ["o", "x", " "],
        [" ", "x", "o"]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end

    test "returns the correct winner when match found on the third column" do
      board_o = [
        ["x", " ", "o"],
        ["x", " ", "o"],
        [" ", " ", "o"]
      ]

      board_x = [
        ["o", " ", "x"],
        ["o", " ", "x"],
        [" ", "o", "x"]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end
  end

  describe "diagonals" do
    test "returns the correct winner when match found in backward diagonal" do
      board_o = [
        ["o", "x", " "],
        ["x", "o", " "],
        [" ", " ", "o"]
      ]

      board_x = [
        ["x", "o", " "],
        ["o", "x", " "],
        ["o", " ", "x"]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end

    test "returns the correct winner when match found in forward diagonal" do
      board_o = [
        [" ", "x", "o"],
        ["x", "o", " "],
        ["o", " ", " "]
      ]

      board_x = [
        ["o", "o", "x"],
        ["o", "x", " "],
        ["x", " ", " "]
      ]

      assert TicTacToe.winner(board_o) == "o"
      assert TicTacToe.winner(board_x) == "x"
    end
  end

  describe "draws" do
    test "returns 'draw' when the board is a draw" do
      board = [
        ["o", "x", "o"],
        ["o", "x", "x"],
        ["x", "o", "o"]
      ]

      assert TicTacToe.winner(board) == "draw"
    end
  end

  # describe "5 x 5 board" do
  #   test "returns the correct winner when match found on a row" do
  #     board = [
  #       ["o", "o", "o", "o", "o"],
  #       ["x", "x", " ", " ", " "],
  #       ["x", "x", "x", " ", " "],
  #       [" ", " ", " ", " ", " "],
  #       [" ", " ", " ", " ", " "]
  #     ]

  #     assert TicTacToe.winner(board) == "o"
  #   end

  #   test "returns the correct winner when match found on a column" do
  #     board = [
  #       ["o", "x", "x", " ", " "],
  #       ["o", "x", " ", " ", " "],
  #       ["o", "x", "x", " ", " "],
  #       ["o", " ", " ", " ", " "],
  #       ["o", " ", " ", " ", " "]
  #     ]

  #     assert TicTacToe.winner(board) == "o"
  #   end

  #   test "returns the correct winner when match found on a forward diagonal" do
  #     board = [
  #       [" ", "x", "x", " ", "o"],
  #       [" ", "x", " ", "o", " "],
  #       ["x", "x", "o", " ", " "],
  #       [" ", "o", " ", " ", " "],
  #       ["o", " ", " ", " ", " "]
  #     ]

  #     assert TicTacToe.winner(board) == "o"
  #   end

  #   test "returns the correct winner when match found on a backward diagonal" do
  #     board = [
  #       ["o", "x", "x", " ", " "],
  #       [" ", "o", " ", "x", " "],
  #       ["x", "x", "o", " ", " "],
  #       [" ", " ", " ", "o", " "],
  #       [" ", " ", " ", " ", "o"]
  #     ]

  #     assert TicTacToe.winner(board) == "o"
  #   end
  # end

  # describe "unfinished" do
  #   test "returns 'unfinished' when the board not finished yet" do
  #     board = [
  #       ["o", "x", "o"],
  #       ["o", "x", "x"],
  #       ["x", "o", " "]
  #     ]

  #     assert TicTacToe.winner(board) == "unfinished"
  #   end
  # end
end
