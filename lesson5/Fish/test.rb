require './solution.rb'
require 'minitest/autorun'
include Fish

describe Fish do

  it "solves codility example correctly" do
    fish_sizes = [4, 3, 2, 1, 5]
    directions = [0, 1, 0, 0, 0]
    fish_alive = 2
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end

  it "returns 1 for 1 fish" do
    fish_sizes = [4]
    directions = [0]
    fish_alive = 1
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end
    it "returns number of fish if all fish going downstream" do
    fish_sizes = [4, 3, 2, 1, 5]
    directions = [0, 0, 0, 0, 0]
    fish_alive = 5
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end

  it "returns number of fish if all fish going upstream" do
    fish_sizes = [4, 3, 2, 1, 5]
    directions = [1, 1, 1, 1, 1]
    fish_alive = 5
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end

  it "returns number of fish if no fish ever meet" do
    fish_sizes = [4, 3, 2, 1, 5]
    directions = [0, 0, 1, 1, 1]
    fish_alive = 5
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end

  it "returns correct result for fish going in different directions" do
    fish_sizes = [4, 2, 5, 1, 3, 6]
    directions = [1, 0, 1, 0, 1,1]
    fish_alive = 4
    assert_equal(fish_alive, solution(fish_sizes, directions))
  end

end
