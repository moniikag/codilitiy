require './solution.rb'
require 'minitest/autorun'
include TapeEquilibrium

describe TapeEquilibrium do
  it "solves correctly codility example" do
    array = [3,1,2,4,3]
    expected_equilibrium = 1
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for two positive numbers" do
    array = [1,4]
    expected_equilibrium = 3
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for two negative numbers" do
    array = [-100,-50]
    expected_equilibrium = 50
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for two equal numbers" do
    array = [5,5]
    expected_equilibrium = 0
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for one positive and one negative number" do
    array = [-100, 50]
    expected_equilibrium = 150
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for positive numbers" do
    array = [1,2,3,4,5,6,7]
    expected_equilibrium = 2
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for negative numbers" do
    array = [-3,-4,-5]
    expected_equilibrium = 2
    assert_equal(solution(array), expected_equilibrium)
  end

  it "returns correct value for positive and negative numbers" do
    array = [-100,5,-200,80]
    expected_equilibrium = 15
    assert_equal(solution(array), expected_equilibrium)
  end
end
