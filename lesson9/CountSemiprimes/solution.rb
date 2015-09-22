# given N and two arrays p & q
# find number of semiprimes in range p[i]..q[i]
# 0 < p[i] <= q[i] <= N
# semiprime => prime * prime
# codility 100%

module CountSemiprimes

  require 'prime'

  def solution(n, p, q) #binary
    result = []
    semiprimes = [0]
    Prime.each(n/2).each do |p1|
      Prime.each(Math.sqrt(n).floor) do |p2|
        semiprimes << p1 * p2
      end
    end
    semiprimes << n*2
    semiprimes = semiprimes.uniq.sort

    p.each_with_index do |el, i|
      first = find_bigger_or_equal(semiprimes, el)
      last = find_smaller_or_equal(semiprimes, q[i])
      if first == 'none' || last == 'none' || last < first
        result << 0
      else
        result << last - first + 1
      end
    end
    result
  end

  def find_bigger_or_equal(primes, min)
    return 'none' if primes == [0]
    b = 0
    e = primes.length-1
    first_index = loop do
      break "none" if b == e && primes[b] < min
      break b if primes[b] == min || (primes[b] > min && primes[b-1] < min)
      mid = (b+e)/2
      if primes[mid] < min
        b = mid+1
      else
        e = mid
      end
    end
    return first_index
  end

  def find_smaller_or_equal(primes, max)
    return 'none' if primes == [0]
    b = 0
    e = primes.length-1
    last_index = loop do
      break "none" if b == e && primes[b] > max
      break b if primes[b] == max || (primes[b] < max && primes[b+1] > max)
      mid = (b+e)/2
      mid +=1 if mid == b
      if primes[mid] > max
        e = mid
      else
        b = mid
      end
    end
    return last_index
  end

end

# require 'prime'

#   def solution(n, p, q) #codility 100% 20%

#     subprimes = []
#     Prime.each(n/2) do |prime1|
#       Prime.each(Math.sqrt(n).floor) do |prime2|
#         subprimes << prime1 * prime2
#       end
#     end
#     subprimes.sort!

#     result = []
#     for i in 0...p.length do
#       result << ([*p[i]..q[i]] & subprimes).size
#     end
#     result
#   end

# end

