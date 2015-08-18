# given k - exoected min length of tied ropes
# given arr - length of adjacent ropes
# return max count of (tied) ropes that are >= k
# codility 100%

module TieRopes

  def solution(k, a)
    current_sum = 0
    count = 0
    a.each do |rope|
      current_sum += rope
      if current_sum >= k
        count +=1
        current_sum = 0
      end
    end
    return count
  end

end
