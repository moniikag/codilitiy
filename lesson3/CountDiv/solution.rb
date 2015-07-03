# codility 100%
# Write a function:
# def solution(a, b, k)
# that, given three integers A, B and K, returns the number of integers within the range [A..B] that are divisible by K, i.e.:
# { i : A ≤ i ≤ B, i mod K = 0 }
# A and B are integers within the range [0..2,000,000,000];
# K is an integer within the range [1..2,000,000,000];
# A ≤ B.

module CountDiv

  def solution(a,b,k)
    if a%k == 0
        aa = a
    else
        aa = (a/k + 1)*k
    end

    return 0 if aa > b

    bb = (b/k) * k

    count = 1
    count += (bb-aa)/k
  end

end
