module Solution

  def solution(a)
    part1 = a[0]
    part2 = 0

    a[1..-1].each do |i|
      part2 += i
    end
    mindiff = (part1-part2).abs

    a[1...-1].each do |i|
      part1+=i
      part2-=i
      diff = (part1-part2).abs
      mindiff = diff if diff < mindiff
    end

    return mindiff
  end

end
