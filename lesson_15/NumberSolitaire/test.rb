require_relative './solution.rb'
require 'minitest/autorun'
include NumberSolitaire

describe NumberSolitaire do
  it 'solves codility example correctly' do
    arr = [1,-2,0,9,-1,-2]
    result = 8
    assert_equal(result, solution(arr))
  end

  it 'returns 0 for empty array' do
    arr = []
    result = 0
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for 1-el array' do
    arr = [-6]
    result = -6
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for 2-el array' do
    arr = [5,-2]
    result = 3
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for 3-el array' do
    arr = [5, -4, 7]
    result = 12
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for all positive elements' do
    arr = [5,1,4,2,6,3]
    result = 21
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for all negative elements' do
    arr = [-5,-4,-1,-5,-2,-3,-9,-1,-12]
    result = -18
    assert_equal(result, solution(arr))
  end

  it 'returns correct value for mixed elements' do
    arr = [-3, 2, 1, 9, 0, 1, -8, 4, -1, 8, 4]
    result = 26
    assert_equal(result, solution(arr))
  end
end
