#codility 100%
# given a non-empty zero-indexed array A consisting of N integers and integer X,
# returns the earliest time when the frog can jump to the other side of the river.
# If the frog is never able to jump to the other side of the river, the function should return −1.
# N and X are integers within the range [1..100,000];
# each element of array A is an integer within the range [1..X].


module FrogRiverOne

  def solution(x, a)
    arr = Array.new(x,false)
    changes = 0
    for i in 0...a.length do
      if arr[a[i]-1] == false
          arr[a[i]-1] = true
          changes += 1
          return i if changes == x
      end
    end
    return -1
  end

end
