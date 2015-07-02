# codility 100%
# non-empty zero-indexed array A consisting of N integers is given.
# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [1..1,000,000,000]
# -> The goal is to check whether array A is a permutation.

module PermCheck

  def solution(a)
    arr = Array.new(a.length, false)
    changes = 0
    a.each do|value|
      return 0 if value > a.length
      if arr[value-1] == false
        arr[value-1] = true
        changes += 1
      else
        return 0
      end
    end
    return 1
  end

end
