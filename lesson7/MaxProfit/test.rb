require './solution.rb'
require 'minitest/autorun'
include MaxProfit

describe MaxProfit do
  it "solves correctly codility example" do
    arr = [23171, 21011, 21123, 21366, 21013, 21367]
    max_profit = 356
    assert_equal(max_profit, solution(arr))
  end

  it "returns 0 for empty array" do
    arr = []
    max_profit = 0
    assert_equal(max_profit, solution(arr))
  end

  it "returns 0 for 1-el array" do
    arr = [5]
    max_profit = 0
    assert_equal(max_profit, solution(arr))
  end

  it "returns 0 for decreasing prices" do
    arr = [6,5,4,3,2]
    max_profit = 0
    assert_equal(max_profit, solution(arr))
  end

  it "returns correct value for increasing prices" do
    arr = [1,2,3,4,5,6,7]
    max_profit = 6
    assert_equal(max_profit, solution(arr))
  end

  it "returns correct value for mixed valued" do
    arr = [8,3,6,1,9,4,2,1,6,17]
    max_profit = 16
    assert_equal(max_profit, solution(arr))
  end
end
