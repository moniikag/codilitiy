require_relative './solution.rb'
require 'minitest/autorun'
include MaxNonoverlappingSegments

describe MaxNonoverlappingSegments do
  it 'solves codility example correctly' do
    a = [1,3,7,9,9]
    b = [5,6,8,9,10]
    result = 3
    assert_equal(result, solution(a,b))
  end

  it 'returns 0 for empty arrays' do
    a = []
    b = []
    result = 0
    assert_equal(result, solution(a,b))
  end

  it 'returns 1 for 1-el arrays' do
    a = [1]
    b = [5]
    result = 1
    assert_equal(result, solution(a,b))
  end

  it 'solves correctly given example' do
    a = [2,3,5,5,6,8,9,9]
    b = [4,5,8,9,9,9,15,16]
    result = 3
    assert_equal(result, solution(a,b))
  end
end
