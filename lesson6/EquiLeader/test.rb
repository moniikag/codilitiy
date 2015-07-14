require './solution.rb'
require 'minitest/autorun'
include EquiLeader

describe EquiLeader do
  it 'solves codility example correctly' do
    arr = [4,3,4,4,4,2]
    equi_leaders = 2
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns 0 for empty array' do
    arr = []
    equi_leaders = 0
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns 0 for 1-el array' do
    arr = [4]
    equi_leaders = 0
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns 1 for 2-el array with the same elements' do
    arr = [4,4]
    equi_leaders = 1
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns 0 for 3-el array' do
    arr = [4,3,4]
    equi_leaders = 0
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns correct value for all the same elements' do
    arr = [4,4,4,4,4,4,4]
    equi_leaders = 6
    assert_equal(equi_leaders, solution(arr))
  end

  it 'returns correct value for many elements' do
    arr = [4,8,4,4,3,4,3,6,4,8,4,4]
    equi_leaders = 6
    assert_equal(equi_leaders, solution(arr))
  end
end
