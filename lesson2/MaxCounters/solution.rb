# codility 100%
# A non-empty zero-indexed array A of M integers is given. This array represents consecutive operations:
# if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
# if A[K] = N + 1 then operation K is max counter.
# N and M are integers within the range [1..100,000];
# each element of array A is an integer within the range [1..N + 1].
# -> The goal is to calculate the value of every counter after all operations



module MaxCounters

  def solution(n, a)
    counter = Array.new(n, 0)
    final_max = 0
    current_max = 0

    a.each do |x|
      if x == n+1
        final_max = current_max
      else
        counter[x-1] = final_max if counter[x-1] < final_max
        counter[x-1] += 1
        current_max = counter[x-1] if counter[x-1] > current_max
      end
    end

    counter.each_with_index do |el, index|
      counter[index] = final_max if el < final_max
    end

    return counter
  end

end
