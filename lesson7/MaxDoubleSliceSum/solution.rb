# codility 100%
# A non-empty zero-indexed array A consisting of N integers is given.
# A triplet (X, Y, Z), such that 0 ≤ X < Y < Z < N, is called a double slice.
# The sum of double slice (X, Y, Z) is the total of A[X + 1] + A[X + 2]
# + ... + A[Y − 1] + A[Y + 1] + A[Y + 2] + ... + A[Z − 1].

module MaxDoubleSliceSum

  def solution(a)
    return 0 if a.length < 4
    left_sides = [0]
    right_sides = [0]
    side_sum = 0
    a[1..-3].each do |el|
      side_sum += el
      side_sum = [side_sum,0].max
      left_sides << side_sum
    end

    a.reverse!
    side_sum = 0
    a[1..-3].each do |el|
      side_sum += el
      side_sum = [side_sum,0].max
      right_sides << side_sum
    end

    result = 0
    for i in 1..a.length-2
      result = [result, left_sides[i-1]+right_sides[-i]].max
    end
    result
  end

end
