# frozen_string_literal: true

class TicTacToe
  PLAYER_X = 'X'
  PLAYER_O = 'O'
  BOARD_SIZE = 3

  def initialize
    @board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE, ' ') }
    @current_player = PLAYER_X
  end

  
  def display_board
    puts "  #{(0..BOARD_SIZE - 1).to_a.join(' ')}"
    @board.each_with_index { |row, i| puts "#{i} #{row.join(' ')}" }
  end

  def make_move(row, col)
    if valid_move?(row, col)
      @board[row][col] = @current_player
      switch_player
      true
    else
      puts 'Invalid move! Try again.'
      false
    end
  end

  def game_over?
    winner? || draw?
  end

  private

  def valid_move?(row, col)
    @board[row][col] == ' '
  end

  def switch_player
    @current_player = @current_player == PLAYER_X ? PLAYER_O : PLAYER_X
  end

  def winner?
    lines_to_check = @board + @board.transpose + diagonals
    lines_to_check.any? { |line| line.uniq.length == 1 && line[0] != ' ' }
  end

  def diagonals
    diagonal1 = (0..BOARD_SIZE - 1).map { |i| @board[i][i] }
    diagonal2 = (0..BOARD_SIZE - 1).map { |i| @board[i][BOARD_SIZE - 1 - i] }
    [diagonal1, diagonal2]
  end

  def draw?
    @board.flatten.none?(' ')
  end
end

# Juego
game = TicTacToe.new

until game.game_over?
  game.display_board
  puts "#{game.instance_variable_get(:@current_player)}'s turn."
  puts "Enter row (0-#{TicTacToe::BOARD_SIZE - 1}):"
  row = gets.chomp.to_i
  puts "Enter column (0-#{TicTacToe::BOARD_SIZE - 1}):"
  col = gets.chomp.to_i

  game.make_move(row, col)
  puts "\n"
end

game.display_board

if game.winner?
  puts "Player #{game.instance_variable_get(:@current_player)} wins!"
else
  puts "It's a draw!"
end
