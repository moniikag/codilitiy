require_relative './solution.rb'
require 'minitest/autorun'
include AbsDistinct

describe AbsDistinct do
  it 'solves codility example correctly' do
    arr = [-5,-3,-1,0,3,6]
    expected_result = 5
    assert(expected_result, solution(arr))
  end

  it 'returns correct value for 1-el array' do
    arr = [-5]
    expected_result = 1
    assert(expected_result, solution(arr))
  end

  it "returns correct value for all negative numbers" do
    arr = [-5,-3,-2,-2,-2,-1]
    expected_result = 4
    assert(expected_result, solution(arr))
  end

  it "returns correct value for all non-negative numbers" do
    arr = [0, 0, 1, 3, 5, 7, 7]
    expected_result = 5
    assert(expected_result, solution(arr))
  end

  it "returns correct value for negative&positive pairs" do
    arr = [-4,-3,-3,-2,-1,1,1,2,3,4,4]
    expected_result = 4
    assert(expected_result, solution(arr))
  end

  it "returns correct value for one element repeated" do
    arr = [6,6,6,6,6,6,6,6,6,6,6]
    expected_result = 1
    assert(expected_result, solution(arr))
  end
end
