# codility 100%
# A zero-indexed array A consisting of N integers is given. A triplet (P, Q, R) is triangular if 0 ≤ P < Q < R < N and:
# A[P] + A[Q] > A[R],
# A[Q] + A[R] > A[P],
# A[R] + A[P] > A[Q].
# N is an integer within the range [0..100,000];
# each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
# returns 1 if there exists a triangular triplet for this array and returns 0 otherwise

module Triangle

  def solution(a)
    return 0 if a.length < 3
    b = a.dup.sort!
    for i in 0...b.length-2 do
      return 1 if b[i] + b[i+1] > b[i+2]
    end
    return 0
  end

end
