# codility 100%
# A zero-indexed array A consisting of N integers
# If a single share was bought on day P and sold on day Q,
# where 0 ≤ P ≤ Q < N, then the profit of such transaction is equal
# to A[Q] − A[P], provided that A[Q] ≥ A[P]
# N is an integer within the range [0..400,000];
# each element of array A is an integer within the range [0..200,000].

module MaxProfit

  def solution(a)
    return 0 if a.length <= 1
    min = a[0]
    max = 0
    max_profit = a[1]-a[0]
    a.each do |price|
      if price < min
        min = price
        max = min
      elsif price > max
        max = price
        max_profit = [max-min, max_profit].max
      end
    end
    max_profit > 0 ? max_profit : 0
  end
end
