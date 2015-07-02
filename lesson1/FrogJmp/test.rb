require './solution.rb'
require 'minitest/autorun'
include FrogJmp

describe FrogJmp do
  it "solves correctly codility example" do
    start_position = 10
    end_position = 85
    length_of_jump = 30
    expected_number_of_jumps = 3
    assert_equal(solution(start_position, end_position, length_of_jump), expected_number_of_jumps)
  end

  it "returns correct result if distance is not divisible by length of jump" do
    start_position = 1
    end_position = 100
    length_of_jump = 10
    expected_number_of_jumps = 10
    assert_equal(solution(start_position, end_position, length_of_jump), expected_number_of_jumps)
  end

  it "returns correct result if distance is divisible by length of jump" do
    start_position = 3
    end_position = 9
    length_of_jump = 3
    expected_number_of_jumps = 2
    assert_equal(solution(start_position, end_position, length_of_jump), expected_number_of_jumps)
  end

  it "returns correct result if exactly one jump needed" do
    start_position = 4
    end_position = 9
    length_of_jump = 5
    expected_number_of_jumps = 1
    assert_equal(solution(start_position, end_position, length_of_jump), expected_number_of_jumps)
  end

  it "returns correct result if distance is smaller then one jump length" do
    start_position = 55
    end_position = 90
    length_of_jump = 100
    expected_number_of_jumps = 1
    assert_equal(solution(start_position, end_position, length_of_jump), expected_number_of_jumps)
  end
end
