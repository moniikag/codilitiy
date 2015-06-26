module Solution
  def solution(x,y,d)
    if (y-x) % d != 0
      jumps = (y-x) / d + 1
    else
      jumps = (y-x) / d
    end
    return jumps
  end
end
