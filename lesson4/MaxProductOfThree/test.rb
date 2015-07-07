require "./solution.rb"
require "minitest/autorun"
include MaxProductOfThree

describe MaxProductOfThree do
  it "solves codility example correctly" do
    arr = [-3, 1, 2, -2, 5, 6]
    maxtriplet = 60
    assert_equal(maxtriplet, solution(arr))
  end

  it "returns correct value for positive integers" do
    arr = [5,8,3,6,1,0,5,3,3,4]
    maxtriplet = 240
    assert_equal(maxtriplet, solution(arr))
  end

  it "returns correct value for negative integers" do
    arr = [-3, -8, -9, -1, -5, -50]
    maxtriplet = -15
    assert_equal(maxtriplet, solution(arr))
  end

  it "returns correct value for positive and negative integers" do
    arr = [-8, 1, 2, -4, 5, 6]
    maxtriplet = 192
    assert_equal(maxtriplet, solution(arr))
  end
end
