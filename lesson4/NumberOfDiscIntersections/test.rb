require './solution.rb'
require 'minitest/autorun'
include NumberOfDiscIntersections

describe NumberOfDiscIntersections do
  it "solves codility example correctly" do
    arr = [1,5,2,1,4,0]
    intersections = 11
    assert_equal(intersections, solution(arr))
  end

  it "returns 0 for ampty array" do
    arr = []
    intersections = 0
    assert_equal(intersections, solution(arr))
  end

  it "returns 0 for 1 circle" do
    arr = [9]
    intersections = 0
    assert_equal(intersections, solution(arr))
  end

  it "returns 0 for two circles with no common elements" do
    arr = [0,0]
    intersections = 0
    assert_equal(intersections, solution(arr))
  end

  it "returns 1 for two circles with common elements" do
    arr = [1,5]
    intersections = 1
    assert_equal(intersections, solution(arr))
  end

  it "returns correct result for many circles" do
    arr = [9,4,1,6,3,1]
    intersections = 14
    assert_equal(intersections, solution(arr))
  end
end
