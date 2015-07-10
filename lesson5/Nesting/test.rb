require './solution.rb'
require 'minitest/autorun'
include Nesting

describe Nesting do

  it "solves codility example no 1 correctly" do
    string = '(()(())())'
    expected_result = 1
    assert_equal(expected_result, solution(string))
  end

  it "solves codility example no 2 correctly" do
    string = '())'
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 1 for empty string" do
    string = ''
    expected_result = 1
    assert_equal(expected_result, solution(string))
  end

  it "returns 1 for correct string type (U)" do
    string = '(((())))'
    expected_result = 1
    assert_equal(expected_result, solution(string))
  end

  it "returns 1 for correct strign type VW" do
    string = '()((()))'
    expected_result = 1
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for only '(' elements" do
    string = "((((((((("
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for only ')' elements" do
    string = ")))))))))"
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for more '(' elements" do
    string = '((()()(((()()(()('
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for more ')' elements" do
    string = '()))))()()(())))()'
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for first element eq ')'" do
    string = ')()'
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

  it "returns 0 for last element eq '('" do
    string = '()(())()('
    expected_result = 0
    assert_equal(expected_result, solution(string))
  end

end
