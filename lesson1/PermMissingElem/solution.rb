module Solution

  def solution(a)
    a.sort!
    return 1 if a[0] != 1
    return a.length+1 if a[-1] != a.length+1

    i = 0
    while a[i] == a[i+1]-1
      i+=1
    end
    return a[i] + 1
  end

end
