require './solution.rb'
require 'minitest/autorun'
include CountFactors

describe CountFactors do

  it "solves codility example correctly" do
    n = 24
    factors = 8
    assert_equal(factors, solution(n))
  end

  it "returns correct value for n=1" do
    n = 1
    factors = 1
    assert_equal(factors, solution(n))
  end

  it "returns correct value for n=2" do
    n = 2
    factors = 2
    assert_equal(factors, solution(n))
  end

  it "returns correct valude for n=3" do
    n = 3
    factors = 2
    assert_equal(factors, solution(n))
  end

  it "returns correct valude for n=10" do
    n = 10
    factors = 4
    assert_equal(factors, solution(n))
  end

  it "returns correct valude for n=101" do
    n = 101
    factors = 2
    assert_equal(factors, solution(n))
  end

end
