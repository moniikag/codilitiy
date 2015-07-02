# codility 100%
# non-empty zero-indexed array
# N integers
# 0 < P < N
# N < 2; 100.000 >
# arr[i] < -1.000; 1000 >

module TapeEquilibrium

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
