require_relative './solution.rb'
require 'minitest/autorun'
include MinAbsSumOfTwo

describe MinAbsSumOfTwo do

  it 'solves codility example no 1 correctly' do
    a = [1,4,-3]
    result = 1
    assert_equal(result, solution(a))
  end

  it 'solves codility example no 2 correctly' do
    a = [-8,4,5,-10,3]
    result = 3
    assert_equal(result, solution(a))
  end

  it 'returns 0 if any element is 0' do
    a = [-8,4,5,0,-10,3]
    result = 0
    assert_equal(result, solution(a))
  end

  it 'returns double of min-el if all el. positive' do
    a = [3,6,8,9]
    result = 6
    assert_equal(result, solution(a))
  end

  it 'returns double of max-el if all el. negative' do
    a = [-8,-4,-3,-5,-10]
    result = 6
    assert_equal(result, solution(a))
  end

  it 'returns correct result for mixed elements' do
    a = [-8,-4,-12,5,-10,18,-2,9]
    result = 1
    assert_equal(result, solution(a))
  end

  it 'returns correct result for mixed elements' do
    a = [15,-8,-4,30,-3,-5,-10]
    result = 5
    assert_equal(result, solution(a))
  end

  it 'returns correct result for mixed elements' do
    a = [15,-8,-2,-3,-5,-10]
    result = 4
    assert_equal(result, solution(a))
  end

end
