# codility 100%
# find max slice
# A non-empty zero-indexed array A
# A pair of integers (P, Q), such that 0 ≤ P ≤ Q < N,
# is called a slice of array A. The sum of a slice (P, Q)
# is the total of A[P] + A[P+1] + ... + A[Q].

module MaxSliceSum

  def solution(a)
    max_ending = [a[0],0].max
    max_slice = 0

    all_pairs_negative = true
    max = a[0]

    a[1..-1].each_with_index do |el,i|
      all_pairs_negative = false if a[i+1]+a[i] >= 0
      max = [max, a[i+1]].max
      max_ending = [0, max_ending+el].max
      max_slice = [max_ending, max_slice].max
    end
    if all_pairs_negative == true
      return max
    else
      return [max_slice, max].max
    end
  end

end
