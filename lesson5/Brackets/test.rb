require './solution.rb'
require 'minitest/autorun'
include Brackets

describe Brackets do
  it 'solves correctly codility example' do
    s = '{[()()]}'
    expected_result = 1
    assert_equal(expected_result, solution(s))
  end

  it 'solves correctly codility example' do
    s = '([)()]'
    expected_result = 0
    assert_equal(expected_result, solution(s))
  end

  it 'returns 1 for emtpy string' do
    s = ''
    expected_result = 1
    assert_equal(expected_result, solution(s))
  end

  it 'returns 0 for 1-el string' do
    s = '('
    expected_result = 0
    assert_equal(expected_result, solution(s))
  end

  it 'returns 1 for correct string' do
    s = '(){}[({})][]{()}'
    expected_result = 1
    assert_equal(expected_result, solution(s))
  end

  it 'returns 0 for incorrect string' do
    s = '[[{][{[]][[((()(({[[]][][[]}'
    expected_result = 0
    assert_equal(expected_result, solution(s))
  end
end
