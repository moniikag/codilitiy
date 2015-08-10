# codility 100%
# A distinct slice is a slice consisting of only unique numbers.
# That is, no individual number occurs more than once in the slice.


module CountDistinctSlices

  def solution(m, a)
    presence = Array.new(m+1, nil)
    beg = 0
    count = 0
    for i in 0...a.length
      if presence[a[i]] != nil && presence[a[i]] >= beg
        beg = presence[a[i]] + 1
      end
      presence[a[i]] = i
      count += i-beg+1
      break if count > 1000000000
    end
    count > 1000000000 ? 1000000000 : count
  end

end
