def turn_count(board)
  count = 0
  board.each do | token |
    if token == "X" || token == "O"
      count += 1
    end
  end
  return count
end

def current_player(board)
  # use the return value from #turn_count to modulo return "X" or "O"
  count = turn_count(board)
  count.even? ? "X" : "O"
end
