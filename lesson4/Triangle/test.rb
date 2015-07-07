require "./solution.rb"
require "minitest/autorun"
include Triangle

describe Triangle do
  it "solves codility example no 1 correctly" do
    arr = [10, 2, 5, 1, 8, 20]
    expected_result = 1
    assert_equal(expected_result, solution(arr))
  end

  it "solves codility example no 2 correctly" do
    arr = [10, 50, 5, 1]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 if 0-el array given" do
    arr = []
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 if 1-el array given" do
    arr = [5]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 if 2-el array given" do
    arr = [5,6]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 1 for three equal numbers" do
    arr = [3,3,3]
    expected_result = 1
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 if one of three numbers is 0" do
    arr = [0,1,1]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 for numbers < 0" do
    arr = [-6, -7, -5]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end

  it "returns 1 if triangle possible" do
    arr = [-5, -20, 5, 90, 6, -77, 7, 100]
    expected_result = 1
    assert_equal(expected_result, solution(arr))
  end

  it "returns 0 if triangle not possible" do
    arr = [-5, -100, -3, 20000, -300, 5, 70]
    expected_result = 0
    assert_equal(expected_result, solution(arr))
  end
end
