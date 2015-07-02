require './solution'
require 'minitest/autorun'
include MaxCounters

describe MaxCounters do
  it "solves codility example correctly" do
    n = 5
    entry_array = [3,4,4,6,1,4,4]
    expected_result = [3,2,2,4,2]
    assert_equal(expected_result, solution(n, entry_array))
  end

 it "returns correct result for one-el array eq [1] and n = 1" do
    n = 1
    entry_array = [1]
    expected_result = [1]
    assert_equal(expected_result, solution(n, entry_array))
  end

   it "returns correct result for one-el array eq [2] and n = 1" do
    n = 1
    entry_array = [2]
    expected_result = [0]
    assert_equal(expected_result, solution(n, entry_array))
  end

   it "returns correct result if all elements of the array are eq n+1" do
    n = 5
    entry_array = [6,6,6,6,6,6]
    expected_result = [0,0,0,0,0]
    assert_equal(expected_result, solution(n, entry_array))
  end

  it "returns correct result if no elements of the array are eq n+1" do
    n = 5
    entry_array = [1,5,3,1,2,4]
    expected_result = [2,1,1,1,1]
    assert_equal(expected_result, solution(n, entry_array))
  end

  it "returns correct result for some elements eq n+1" do
    n = 5
    entry_array = [4,6,1,6,6,3,2,6,3]
    expected_result = [3,3,4,3,3]
    assert_equal(expected_result, solution(n, entry_array))
  end
end
