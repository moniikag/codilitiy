require './solution.rb'
require 'minitest/autorun'
include MissingInteger

describe MissingInteger do
  it "solves codility example correctly" do
    array = [1,3,6,4,1,2]
    first_missing_integer = 5
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for one-el arr without 1" do
    array = [5]
    first_missing_integer = 1
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for one-el arr including 1" do
    array = [1]
    first_missing_integer = 2
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for one-el arr including negative el" do
    array = [-40]
    first_missing_integer = 1
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for array containing positive elements" do
    array = [1,7,6,9,1,2]
    first_missing_integer = 3
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for array containing negative elements" do
    array = [-1,-1,-6,-9,-1,-2]
    first_missing_integer = 1
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for array containing positive and negative elements" do
    array = [1,-7,6,-9,1,-2]
    first_missing_integer = 2
    assert_equal(first_missing_integer, solution(array))
  end

  it "returns correct value for non-uniq array" do
    array = [1,3,3,6,3,1,1,2]
    first_missing_integer = 4
    assert_equal(first_missing_integer, solution(array))
  end
end
