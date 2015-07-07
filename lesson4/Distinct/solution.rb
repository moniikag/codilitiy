# codility 100%
# Given a zero-indexed array A consisting of N integers, returns the number of distinct values in array A.

module Distinct

  def solution(a)
    b = a.dup.uniq
    return b.length
  end

end
