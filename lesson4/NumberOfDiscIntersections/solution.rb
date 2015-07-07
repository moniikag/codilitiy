# codility 100%
# A zero-indexed array A of N non-negative integers, specifying the radiuses of the discs, is given.
# The J-th disc is drawn with its center at (J, 0) and radius A[J].
# We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th discs have at least one common point
# (assuming that the discs contain their borders).
# returns the number of (unordered) pairs of intersecting discs.
# The function should return −1 if the number of intersecting pairs exceeds 10,000,000.
# N is an integer within the range [0..100,000];
# each element of array A is an integer within the range [0..2,147,483,647]

module NumberOfDiscIntersections

  def solution(a)
    beginnings = []
    endings = []
    a.each_with_index do |el, index|
      beginnings << (index - el)
      endings <<(index + el)
    end
    beginnings.sort!
    endings.sort!

    how_many_to_add = -1
    intersections = 0

    loop do
      return intersections if beginnings.empty?
      if beginnings[0] <= endings[0]
        how_many_to_add += 1
        intersections += how_many_to_add
        return -1 if intersections > 10000000
        beginnings.shift
      else
        how_many_to_add -= 1
        endings.shift
      end
    end

    return intersections
  end
end
