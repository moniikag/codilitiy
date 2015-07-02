# codility 100%
# A non-empty zero-indexed array A consisting of N integers is given.
# The consecutive elements of array A represent consecutive cars on a road.
# Array A contains only 0s and/or 1s:
# 0 represents a car traveling east,
# 1 represents a car traveling west.
# The goal is to count passing cars.
# The function should return −1 if the number of pairs of passing cars exceeds 1,000,000,000.

module PassingCars

  def solution(a)
      passing_cars = 0
      going_right = 0
      a.each do |value|
          going_right += 1 if value == 0
          passing_cars += going_right if value == 1
          return -1 if passing_cars > 1000000000
      end
      return passing_cars
  end

end
