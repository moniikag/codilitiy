# You should divide this array into K blocks of consecutive elements. The size of the block is any integer between 0 and N. Every element of the array should belong to some block.

# The sum of the block from X to Y equals A[X] + A[X + 1] + ... + A[Y]. The sum of empty block equals 0.

# The large sum is the maximal sum of any block.
# The goal is to find the smallest large sum.

# codility 100%

module MinMaxDivision

  def solution(k, m, a)
    min = a.max
    max = a.inject(:+)
    return min if k >= a.length
    loop do
      break min if min == max
      mid = (min+max)/2
      if necessary_blocks_for_avg(mid, a) > k
        min = mid + 1
      else
        max = mid
      end
    end
    min
  end

  def necessary_blocks_for_avg(mid, a)
    needed_blocks = 1
    current_sum = 0
    a.each do |el|
      current_sum += el
      if current_sum > mid
        current_sum = el
        needed_blocks += 1
      end
    end
    needed_blocks
  end

end
