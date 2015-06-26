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
  expect_equal(solution(arr[0],arr[1], arr[2]), arr[3])
end

def expect_equal(a, b)
  a == b
end

#############################################################

# a[0] - start position
# a[1] - end position
# a[2] - lenght of jump
# a[3] - expected number of jumps
# X, Y and D are integers within the range [1..1,000,000,000];
# X ≤ Y.



arrays_to_test = [
  [10,85,30, 3],     # codility example
  [1,100,10, 10],
  [3,9,3, 2],
  [4,9,3, 2],
  [55,90,8, 5]
]

test(arrays_to_test)
