require_relative './solution.rb'
require 'minitest/autorun'
include TieRopes

describe TieRopes do

  it "solves codility example correctly" do
    k = 4
    a = [1,2,3,4,1,1,3]
    result = 3
    assert_equal(result, solution(k,a))
  end

  it "returns 0 for an empty array" do
    k = 4
    a = []
    result = 0
    assert_equal(result, solution(k,a))
  end

  it "returns 0 if no rope long enough possible" do
    k = 10
    a = [1,2,3,1,1,1]
    result = 0
    assert_equal(result, solution(k,a))
  end

  it "returns 1 if only 1 rope possible" do
    k = 10
    a = [1,2,3,4,1,1,3]
    result = 1
    assert_equal(result, solution(k,a))
  end

  it "returns correct result for many ropes possible" do
    k = 3
    a = [1,2,3,4,1,1,3,5,1,1,1,12,4,3,2,7,8,9]
    result = 12
    assert_equal(result, solution(k,a))
  end

end
