require './solution.rb'
require 'minitest/autorun'
include MinPerimeterRectangle

describe MinPerimeterRectangle do

  it "solves codility example correctly" do
    n = 30
    perimeter = 22
    assert_equal(perimeter, solution(n))
  end

  it "returns correct value for n = 1" do
    n = 1
    perimeter = 4
    assert_equal(perimeter, solution(n))
  end

  it "returns correct value for n = 3" do
    n = 3
    perimeter = 8
    assert_equal(perimeter, solution(n))
  end

  it "returns correct value for n = 100" do
    n = 100
    perimeter = 40
    assert_equal(perimeter, solution(n))
  end

  it "returns correct value for n = 101" do
    n = 101
    perimeter = 204
    assert_equal(perimeter, solution(n))
  end

end
