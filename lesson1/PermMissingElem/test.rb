require './solution.rb'
include Solution

def test(arrays_to_test)
  general_test_result = true
  errors=[]

  arrays_to_test.each_with_index do |arr, index|
    if single_test_result(arr) == false
      general_test_result = false
      errors << index+1
    end
  end

  puts "\nfinal result: #{general_test_result}"
  puts "something went wrong in following tests: #{errors}" if general_test_result == false
end

def single_test_result(arr)
  result = single_test(arr)
  if result == true
    print '* '
  else
    print'! '
  end
  return result
end

def single_test(arr)
  expect_equal(solution(arr[0...-1]), arr[-1])
end

def expect_equal(a, b)
  a == b
end

#############################################################

# a[-1] - expected missing element
# zero-indexed array
# N different ingeters in range [1..(N+1)] -> exactly one integer is missing

arrays_to_test = [
  [2,3,1,5, 4],     # codility example
  [2,5,3,6,4, 1],   # missing first element
  [1,4,2,6,3,5, 7], # missing last element
  [7,2,3,1,5,4, 6],
  [1,7,8,3,2,5,4, 6]
]

test(arrays_to_test)
