require './solution.rb'
require 'minitest/autorun'
include PermCheck

describe PermCheck do
  it "solves correctly codility example no 1" do
    array = [4,1,3,2]
    expected_result = 1
    assert_equal(solution(array), expected_result)
  end

  it "solves correctly codility example no 2" do
    array = [4,1,3]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end

  it "returns 1 for one-el array eq [1]" do
    array = [1]
    expected_result = 1
    assert_equal(solution(array), expected_result)
  end

  it "returns 0 for one-el array not eq [1]" do
    array = [5]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end

  it "returns 1 for two-el permutation" do
    array = [1,2]
    expected_result = 1
    assert_equal(solution(array), expected_result)
  end

  it "returns 0 for two-el array which is not a permutation" do
    array = [1,5]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end

  it "returns 1 if permutation given" do
    array = [8,4,6,2,1,9,3,5,7]
    expected_result = 1
    assert_equal(solution(array), expected_result)
  end

  it "returns 0 if first element missing" do
    array = [4,5,3,2]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end

  it "returns 0 if one element is missing" do
    array = [4,1,5,2]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end

  it "returns 0 if an element is repeated" do
    array = [4,1,3,4,2]
    expected_result = 0
    assert_equal(solution(array), expected_result)
  end
end
