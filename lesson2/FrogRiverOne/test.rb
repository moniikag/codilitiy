require './solution.rb'
require 'minitest/autorun'
include FrogRiverOne

describe FrogRiverOne do
  it "solves correctly codility example" do
    end_position = 5
    array = [1,3,1,4,2,3,5,4]
    expected_result = 6
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns 0 for one-el-array [1] and expected end position eq 1" do
    end_position = 1
    array = [1]
    expected_result = 0
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns -1 for one-el-array [1] and expected end position eq 5" do
    end_position = 5
    array = [1]
    expected_result = -1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns -1 for one-el-array [5] and expected end position eq 5" do
    end_position = 5
    array = [5]
    expected_result = -1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns array.length-1 if crossing the river possible at the last position with the biggest value in the end" do
    end_position = 7
    array = [1,3,1,6,4,2,3,5,4,7]
    expected_result = array.length-1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns array.length-1 if crossing the river possible at the last position with the biggest value not in the end" do
    end_position = 7
    array = [1,6,3,1,7,2,3,5,4]
    expected_result = array.length-1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns array.length-1 for first value in the end" do
    end_position = 5
    array = [5,3,4,2,3,5,4,1]
    expected_result = array.length-1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns -1 for the last value missing" do
    end_position = 6
    array = [1,3,1,4,2,3,5,4]
    expected_result = -1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns -1 for the first value missing" do
    end_position = 6
    array = [4,3,7,4,2,3,5,4]
    expected_result = -1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns -1 for a middle value missing(3)" do
    end_position = 6
    array = [4,10,1,7,4,2,5,4,6]
    expected_result = -1
    assert_equal(solution(end_position, array), expected_result)
  end

  it "returns correct middle index for all values present before the end of the array" do
    end_position = 4
    array = [1,3,4,2,2,3,5,4,8]
    expected_result = 3
    assert_equal(solution(end_position, array), expected_result)
  end
end
