# codility 100%
# An equi leader is an index S such that 0 ≤ S < N − 1 and two sequences
# A[0], A[1], ..., A[S] and A[S + 1], A[S + 2], ..., A[N − 1]
# have leaders of the same value.
# The goal is to count the number of equi leaders

module EquiLeader

  def solution(a)
    return 0 if a.length<=1
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
    return 0 if count <= a.length/2

    left = 0
    right = count
    equi_leaders = 0
    a[0..-2].each_with_index do |el, i|
      if el == x
        left += 1
        right -= 1
      end
      equi_leaders+=1 if (left > (i+1)/2) && (right > (a.length-i-1)/2)
    end
    return equi_leaders
  end

end

