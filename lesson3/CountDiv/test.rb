require './solution.rb'
require 'minitest/autorun'
include CountDiv

describe CountDiv do
  it "solves correctly codility example" do
    a = 6
    b = 11
    k = 2
    divisible_numbers = 3
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 1 for a = b divisible by k" do
    a = 6
    b = 6
    k = 3
    divisible_numbers = 1
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 0 for a = b indivisible by k" do
    a = 6
    b = 6
    k = 4
    divisible_numbers = 0
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 0 for a = b smaller than k" do
    a = 6
    b = 6
    k = 7
    divisible_numbers = 0
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 0 if no number divisible by k" do
    a = 8
    b = 13
    k = 7
    divisible_numbers = 0
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 1 if one number divisible by k" do
    a = 6
    b = 13
    k = 7
    divisible_numbers = 1
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns 2 if only first and last number divisible by k" do
    a = 7
    b = 14
    k = 7
    divisible_numbers = 2
    assert_equal(divisible_numbers, solution(a,b,k))
  end

  it "returns correct result for many divisible numbers" do
    a = 5
    b = 38
    k = 7
    divisible_numbers = 5
    assert_equal(divisible_numbers, solution(a,b,k))
  end
end
