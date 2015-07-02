require './solution.rb'
require 'minitest/autorun'
include PermMissingElem

describe PermMissingElem do
  it "solves correctly codility example" do
    array = [2,3,1,5]
    missing_element = 4
    assert_equal(solution(array), missing_element)
  end

  it "returns 1 for an empty array" do
    array = []
    missing_element = 1
    assert_equal(solution(array), missing_element)
  end

  it "returns corerct value for 2-el array" do
    array = [2]
    missing_element = 1
    assert_equal(solution(array), missing_element)
  end

  it "returns first element in range if missing (1)" do
    array = [2,5,3,6,4]
    missing_element = 1
    assert_equal(solution(array), missing_element)
  end

  it "returns last element in range if missing" do
    array = [1,4,2,6,3,5]
    missing_element = 7
    assert_equal(solution(array), missing_element)
  end

  it "returns a middle element in range missing" do
    array = [7,2,3,1,5,4]
    missing_element = 6
    assert_equal(solution(array), missing_element)
  end
end
