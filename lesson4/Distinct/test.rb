require './solution.rb'
require 'minitest/autorun'
include Distinct

describe Distinct do
  it "solves codility example correctly" do
    arr = [2,1,1,2,3,1]
    number_of_distinct_valued = 3
    assert_equal(number_of_distinct_valued, solution(arr))
  end

  it "returns 0 for empty array" do
    arr = []
    number_of_distinct_valued = 0
    assert_equal(number_of_distinct_valued, solution(arr))
  end

  it "returns 1 for 1-el array" do
    arr = [5]
    number_of_distinct_valued = 1
    assert_equal(number_of_distinct_valued, solution(arr))
  end

  it "returns 2 for opposite numbers" do
    arr = [-3,3]
    number_of_distinct_valued = 2
    assert_equal(number_of_distinct_valued, solution(arr))
  end

  it "returns correct value for many numbers" do
    arr = [2,15,301,-32,3,-191,66]
    number_of_distinct_valued = 3
    assert_equal(number_of_distinct_valued, solution(arr))
  end

end
