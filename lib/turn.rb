# START OF BOARD
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
#END BOARD

#START REQUEST USER'S MOVE
  def input_to_index(input)
    input.to_i - 1
  end

#END REQUEST USER'S MOVE

#START USER MOVE
  def move(board, input, value = "X")
    board[input] = value
  end

#END USER MOVE

#START VALID_MOVE
  def valid_move?(board, index)
    def position_taken?(array, user)
      if array[user] == " " || array[user] == "" || array[user] == nil
        return false
      else
        return true
      end
    end

    def on_board?(num)
      if num.between?(0, 8)
        return true
      else
        return false
      end
    end

    if (position_taken?(board, index)) == false && (on_board?(index) == true)
      return true
    else
      return false
    end
  end

#END VALID_MOVE

  def turn (board, index)
    index = input_to_index
end
