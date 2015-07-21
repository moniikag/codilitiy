# codility 100%
# return count of factors

module CountFactors

  def solution(n)
    return 1 if n == 1
    factors_count = 0
    max_factor = Math.sqrt(n).floor
    for i in 1..max_factor
      factors_count += 2 if n%i == 0
    end
    factors_count -=1 if max_factor ** 2 == n
    return factors_count
  end

end
