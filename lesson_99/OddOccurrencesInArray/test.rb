require_relative './solution.rb'
require 'minitest/autorun'
include OddOccurrencesInArray

describe OddOccurrencesInArray do
  it 'solves codility example correctly' do
    a = [9, 3, 9, 3, 9, 7, 9]
    unpaired = 7
    assert_equal(unpaired, solution(a))
  end

  it 'returns the only element if 1-el array' do
    a = [9]
    unpaired = 9
    assert_equal(unpaired, solution(a))
  end

  it 'returns the element that appears only once' do
    a = [3, 8, 3, 7, 8]
    unpaired = 7
    assert_equal(unpaired, solution(a))
  end

  it 'returnes the element that appeares odd number of times' do
    a = [5,4,3,2,5,1,5,4,5,3,2,5,1]
    unpaired = 5
    assert_equal(unpaired, solution(a))
  end


end
