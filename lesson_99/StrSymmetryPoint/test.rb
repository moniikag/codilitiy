require_relative './solution.rb'
require 'minitest/autorun'
include StrSymmetryPoint

describe StrSymmetryPoint do
  it 'solves codility example no 1 correctly' do
    s = 'racecar'
    result = 3
    assert_equal(result, solution(s))
  end

  it 'solves codility example no 2 correctly' do
    s = 'x'
    result = 0
    assert_equal(result, solution(s))
  end

  it 'returns correct index' do
    s = 'ekstrapartske'
    result = 6
    assert_equal(result, solution(s))
  end

  it 'returns -1 for empty string' do
    s = ''
    result = -1
    assert_equal(result, solution(s))
  end

  it 'returns -1 if no symetry point' do
    s = 'whatever'
    result = -1
    assert_equal(result, solution(s))
  end

  it 'returns -1 if no symetry point' do
    s = 'carrac'
    result = -1
    assert_equal(result, solution(s))
  end
end
