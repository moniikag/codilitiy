# codility 100%
# A non-empty zero-indexed array A consisting of N integers is given.
# The product of triplet (P, Q, R) equates to A[P] * A[Q] * A[R] (0 ≤ P < Q < R < N)
# Your goal is to find the maximal product of any triplet.
# N is an integer within the range [3..100,000];
# each element of array A is an integer within the range [−1,000..1,000].
# module MaxProductOfThree

module MaxProductOfThree

  def solution(a)
    b = a.dup.sort!
    max = b[-1]*b[-2]*b[-3]
    alternative = b[0]*b[1]*b[-1]
    max = alternative if alternative > max
    return max
  end

end
