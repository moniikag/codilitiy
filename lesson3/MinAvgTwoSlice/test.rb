require './solution.rb'
require 'minitest/autorun'
include MinAvgTwoSlice

describe MinAvgTwoSlice do
  it "solves codility example correctly" do
    arr = [4,2,2,5,1,5,8]
    expected_postion = 1
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns 0 for 1-el array' do
    arr = [1]
    expected_postion = 0
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns 0 for 2-el array' do
    arr = [1,5]
    expected_postion = 0
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns correct index for 3-el array' do
    arr = [1,2,3]
    expected_postion = 0
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns correct index for 3-el array' do
    arr = [3,2,1]
    expected_postion = 1
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns correct index for many el and same avg for last two and last three el.' do
    arr = [9,3,4,2]
    expected_postion = 1
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns correct value for negative numbers' do
    arr = [-5,-10,-100,-30,-8]
    expected_postion = 2
    assert_equal(expected_postion, solution(arr))
  end

  it 'returns correct value for mixed numbers' do
    arr = [-5,10,8,-15,30]
    expected_postion = 2
    assert_equal(expected_postion, solution(arr))
  end

end
