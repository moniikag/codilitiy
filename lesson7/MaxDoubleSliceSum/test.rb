require './solution.rb'
require 'minitest/autorun'
include MaxDoubleSliceSum

describe MaxDoubleSliceSum do
  it "solves codility example correctly" do
    arr = [3,2,6,-1,4,5,-1,2]
    result = 17
    assert_equal(result, solution(arr))
  end

  it "returns 0 for 1-el array" do
    arr = [3,]
    result = 0
    assert_equal(result, solution(arr))
  end

  it "returns 0 for 2-el array" do
    arr = [3,2]
    result = 0
    assert_equal(result, solution(arr))
  end

  it "returns 0 for 3-el array" do
    arr = [3,2,-6]
    result = 0
    assert_equal(result, solution(arr))
  end

  it "returns correct value for many values" do
    arr = [-9,2,5,-1,34,5,-81,2]
    result = 46
    assert_equal(result, solution(arr))
  end

  it "returns correct value for many values" do
    arr = [1, 1, 0, 10, -100, 10, 0]
    result = 21
    assert_equal(result, solution(arr))
  end


end
