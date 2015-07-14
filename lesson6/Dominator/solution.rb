# codility 100%
# A zero-indexed array A consisting of N integers is given.
# The dominator of array A is the value that occurs in more than half of the elements of A.
# return index of any dominator element. -1 otherwise

module Dominator

  def solution(a)
    return -1 if a.empty?
    i = 0
    arr = a.sort
    x = arr[arr.length/2]
    index = arr.index(x)
    count = 0
    loop do
      if arr[index] == x
        count += 1
        index +=1
      else
        break
      end
    end
    return a.index(x) if count > a.length/2
    return -1
  end

end
