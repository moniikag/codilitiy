require_relative './solution.rb'
require 'minitest/autorun'
include CountSemiprimes

describe CountSemiprimes do

  it 'solves codility example correctly' do
    n = 26
    p = [1, 4, 16]
    q = [26, 10, 20]
    result = [10,4,0]
    assert_equal(result, solution(n, p, q) )
  end

  it 'returns correct result for n = 1' do
    n = 1
    p = [1, 1]
    q = [1, 1]
    result = [0,0]
    assert_equal(result, solution(n, p, q) )
  end

  it 'returns correct result for n = 4' do
    n = 4
    p = [1, 2, 2, 4]
    q = [4, 2, 4, 4]
    result = [1,0,1,1]
    assert_equal(result, solution(n, p, q) )
  end

  it 'returns correct result for n = 10' do
    n = 10
    p = [1, 1, 5, 7]
    q = [1, 10, 6, 7]
    result = [0,4,1,0]
    assert_equal(result, solution(n, p, q) )
  end

  it 'returns correct result for n = 10' do
    n = 10
    p = [1, 4, 6, 7, 4, 5, 4, 5, 2, 3]
    q = [7, 7, 7, 7, 6, 6, 5, 5, 4, 4]
    result = [2,2,1,0,2,1,1,0,1,1]
    assert_equal(result, solution(n, p, q) )
  end
end
