require './solution.rb'
require 'minitest/autorun'
include ChocolatesByNumbers

describe ChocolatesByNumbers do

  it "solves codility example correctly" do
    number_of_chocolates = 10
    step = 4
    to_eat = 5
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

  it "returns 1 for 1 chocolate and step 1" do
    number_of_chocolates = 1
    step = 1
    to_eat = 1
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

  it "returns 1 for 1 chocolate and step 9" do
    number_of_chocolates = 1
    step = 9
    to_eat = 1
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

  it "returns 5 for 15 chocolate and step 3" do
    number_of_chocolates = 15
    step = 3
    to_eat = 5
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

  it "returns 15 for 15 chocolate and step 4" do
    number_of_chocolates = 15
    step = 4
    to_eat = 15
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

  it "returns 3 for 3 chocolate and step 7" do
    number_of_chocolates = 3
    step = 7
    to_eat = 3
    assert_equal(to_eat, solution(number_of_chocolates, step))
  end

end
