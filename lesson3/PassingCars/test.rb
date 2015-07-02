require './solution.rb'
require 'minitest/autorun'
include PassingCars

describe PassingCars do

  it "solves correctly codility example" do
    array = [0,1,0,1,1]
    expected_result = 5
    assert_equal( expected_result, solution(array))
  end

  it "returns 0 for only one car, traveling east" do
    array = [0]
    expected_result = 0
    assert_equal( expected_result, solution(array))
  end

  it "returns 0 for only one car, traveling west" do
    array = [1]
    expected_result = 0
    assert_equal( expected_result, solution(array))
  end

  it "returns 0 for all cars traveling east" do
    array = [0,0,0,0,0,0,0,0]
    expected_result = 0
    assert_equal( expected_result, solution(array))
  end

  it "returns 0 for all cars traveling west" do
    array = [1,1,1,1,1,1,1,1]
    expected_result = 0
    assert_equal( expected_result, solution(array))
  end

  it "returns 0 for two cars, first traveling west, second east" do
    array = [1,0]
    expected_result = 0
    assert_equal( expected_result, solution(array))
  end

  it "returns 1 for two cars, first traveling east, second west" do
    array = [0,1]
    expected_result = 1
    assert_equal( expected_result, solution(array))
  end

  it "returns correct value for many cars" do
    array = [0,1,1,0,1,1,0,0,0,1,0,1,0,0,1]
    expected_result = 25
    assert_equal( expected_result, solution(array))
  end

  it "returns -1 for more than 1000000000 passing cars" do
    array = Array.new
    1000000.times do
      array << Random.rand(2)
    end
    expected_result = -1
    assert_equal( expected_result, solution(array))
  end

end
