def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip 
    index = input_to_index(user_input)
    if valid_move?(board, index) == true
        move(board, index, value = "X")
        display_board(board)
    else 
        turn(board)
    end
end


def display_board(board)
    puts " #{board[0]} " + "| #{board[1]} |" + " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " + "| #{board[4]} |" + " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " + "| #{board[7]} |" + " #{board[8]} "
end


def valid_move?(board, index)
    if index.between?(0,8)  && position_taken?(board, index) == false
        return true
    elsif position_taken?(board,index) == true
        return false
    else index < 0 || index > 8
        return nil
    end
end


def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
    else board[index] == "X" || board[index] == "O"
        return true
    end
end


def input_to_index(user_input)
    user_input.to_i - 1
  end
  
  
  def move(board, index, value = "X")
      board[index] = value
  end