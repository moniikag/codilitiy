require_relative './solution.rb'
require 'minitest/autorun'
include CountTriangles

describe CountTriangles do

  it 'solves codility example correctly' do
    a = [10,2,5,1,8,12]
    triangle_sets = 4
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 0 for 0-el array' do
    a = []
    triangle_sets = 0
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 0 for 1-el array' do
    a = [5]
    triangle_sets = 0
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 0 for 2-el array' do
    a = [4,5]
    triangle_sets = 0
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 0 for 3-el array but no triangle possible' do
    a = [1,2,3]
    triangle_sets = 0
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 1 for 3-el array and one triangle possible' do
    a = [3,4,2]
    triangle_sets = 1
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns correct value for 4-el array' do
    a = [3,4,2,5]
    triangle_sets = 3
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns 3 for 3 sets possible' do
    a = [2,3,4,5,7]
    triangle_sets = 5
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns correct result for 4 elements' do
    a = [3,5,7,10]
    triangle_sets = 2
    assert_equal(triangle_sets, solution(a))
  end

  it 'returns correct result for 4 elements' do
    a = [3,5,7,9]
    triangle_sets = 3
    assert_equal(triangle_sets, solution(a))
  end

end
