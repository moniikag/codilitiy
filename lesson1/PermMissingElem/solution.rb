# codility 100%
# zero-indexed array
# N different ingeters in range [1..(N+1)] -> exactly one integer is missing
# N is an integer within the range [0..100,000];
# the elements of A are all distinct;
# each element of array A is an integer within the range [1..(N + 1)].

module PermMissingElem

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
