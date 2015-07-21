# codility 100%
# An integer N is given, representing the area of some rectangle.
# The area of a rectangle whose sides are of length
# A and B is A * B, and the perimeter is 2 * (A + B).
# The goal is to find the minimal perimeter of any rectangle
# whose area equals N
# N is an integer within the range [1..1,000,000,000].

module MinPerimeterRectangle

  def solution(n)
    min_perimeter = 4*n
    max_a = Math.sqrt(n).floor
    for i in 1..max_a
      if n % i == 0
        perimeter = 2*i + 2*(n/i)
        min_perimeter = [min_perimeter,perimeter].min
      end
    end
    return min_perimeter
  end

end
