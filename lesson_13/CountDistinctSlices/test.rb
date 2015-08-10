require_relative './solution.rb'
require 'minitest/autorun'
include CountDistinctSlices

describe CountDistinctSlices do

  it 'solves codility example correctly' do
    m = 6
    arr = [3,4,5,5,2]
    expected_result = 9
    assert_equal(expected_result, solution(m,arr))
  end

  it 'returns correct value for 1-el array' do
    m = 6
    arr = [5]
    expected_result = 1
    assert_equal(expected_result, solution(m,arr))
  end

  it 'returns correct value for 2-el array' do
    m = 4
    arr = [3,2]
    expected_result = 3
    assert_equal(expected_result, solution(m,arr))
  end

  it 'returns correct value for 2-el array with element repeated' do
    m = 5
    arr = [5,5]
    expected_result = 2
    assert_equal(expected_result, solution(m,arr))
  end

  it 'returns correct value for array with many elements' do
    m = 5
    arr = [3,1,2,4,5]
    expected_result = 15
    assert_equal(expected_result, solution(m,arr))
  end

  it 'returns correct value for array with many elements, some of them repeated' do
    m = 9
    arr = [3,8,2,8,5,2,2,6,3,7]
    expected_result = 24
    assert_equal(expected_result, solution(m,arr))
  end
end
