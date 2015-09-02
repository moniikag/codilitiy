require_relative './solution.rb'
require 'minitest/autorun'
include BinaryGap

describe BinaryGap do

  it "solves codility example correctly" do
    n = 9
    gap = 2
    assert_equal(gap, solution(n))
  end

  it "returns longer gap (codility example no 2)" do
    n = 529
    gap = 4
    assert_equal(gap, solution(n))
  end

  it "returns gap even if more 0s in the end of binary repr. (codility example no 3)" do
    n = 20
    gap = 1
    assert_equal(gap, solution(n))
  end

  it "returns 0 if no gap (codility example no 4)" do
    n = 15
    gap = 0
    assert_equal(gap, solution(n))
  end

  it "returns 0 for 0" do
    n = 0
    gap = 0
    assert_equal(gap, solution(n))
  end

end
