require './solution.rb'
require 'minitest/autorun'
include Dominator

describe Dominator do
  it "solves codility example corretly" do
    array = [3,4,3,2,3,-1,3,3]
    correct_indexes = [0, 2, 4, 6, 7]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns -1 for empty array" do
    array = []
    correct_indexes = [-1]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns -1 for two elements no dominator" do
    array = [3,4]
    correct_indexes = [-1]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns correct index for two elements with dominator" do
    array = [3,3]
    correct_indexes = [0, 1]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns -1 for three elements no dominator" do
    array = [3,4,1]
    correct_indexes = [-1]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns correct index for three elements with dominator" do
    array = [3,4,3]
    correct_indexes = [0, 2]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns -1 for many elements no dominator" do
    array = [3,4,1,7,34,-12,-68,3,2,5,3]
    correct_indexes = [-1]
    assert_includes(correct_indexes, solution(array))
  end

  it "returns correct index for many elements with dominator" do
    array = [3,-4,3,-4,790,-4,23,-4,90,-4,-4]
    correct_indexes = [1, 3, 5, 7, 9, 10]
    assert_includes(correct_indexes, solution(array))
  end

end
