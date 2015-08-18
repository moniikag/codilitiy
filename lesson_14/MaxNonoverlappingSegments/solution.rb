# find max nonoverlapping (no common points) segments
# array b (endings) sorted increasingly
# chapter: greedy algorihtms (and greedy gives 100% on codility)
# codility 100%

module MaxNonoverlappingSegments

  def solution(a, b)
    return 0 if a.empty?
    count = 1
    i = 1
    endd = b[0]
    while i < a.length
      if a[i] > endd
        count +=1
        endd = b[i]
      end
      i += 1
    end
    return count
  end

end
