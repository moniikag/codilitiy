require './solution.rb'
require 'minitest/autorun'
include MaxSliceSum

describe MaxSliceSum do
  it "solves codility example correctly" do
    arr = [3, 2, -6, 4, 0]
    expected_max_slice = 5
    assert_equal(expected_max_slice, solution(arr))
  end

  it "returns correct value for one positive element" do
    arr = [3]
    expected_max_slice = 3
    assert_equal(expected_max_slice, solution(arr))
  end

  it "returns correct value for one negative element" do
    arr = [-6]
    expected_max_slice = -6
    assert_equal(expected_max_slice, solution(arr))
  end

  it "returns correct value for twp positive elements" do
    arr = [6, 5]
    expected_max_slice = 11
    assert_equal(expected_max_slice, solution(arr))
  end

  it "returns correct value for one negative and one positive element" do
    arr = [-6, 5]
    expected_max_slice = 5
    assert_equal(expected_max_slice, solution(arr))
  end

  it "returns correct value for two negative elements" do
    arr = [-6, -5]
    expected_max_slice = -5
    assert_equal(expected_max_slice, solution(arr))
  end


  it "returns correct value for three negative elements" do
    arr = [-6, -5, -2]
    expected_max_slice = -2
    assert_equal(expected_max_slice, solution(arr))
  end


  it "returns correct value for three positive elements" do
    arr = [5, 4, 78]
    expected_max_slice = 87
    assert_equal(expected_max_slice, solution(arr))
  end


  it "returns correct value for three mixed elements" do
    arr = [-6, 5, -5]
    expected_max_slice = 5
    assert_equal(expected_max_slice, solution(arr))
  end


  it "returns correct value for many elements" do
    arr = [-6, 3, 8, -5, 7,2, 1, -9]
    expected_max_slice = 16
    assert_equal(expected_max_slice, solution(arr))
  end
end
