# codility 100%
# n - number of chocolates
# m - step size
# count chocolates that will be eaten - you stop eating when you encounter an empty wrapper

module ChocolatesByNumbers

  def solution(n,m)
    if n <= m && m % n == 0
      return 1
    else
      return n/gcd(n,m)
    end
  end

  def gcd(n,m,res=1)
    return n*res if n == m
    if n%2 == 0 && m%2 == 0
      return gcd(n/2, m/2, 2*res)
    elsif n%2 == 0
      return gcd(n/2, m, res)
    elsif m%2 == 0
      return gcd(n, m/2, res)
    elsif n>m
      return gcd(n-m, m, res)
    else
      return gcd(m-n, n, res)
    end
  end

end
