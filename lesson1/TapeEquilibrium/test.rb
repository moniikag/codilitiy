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
  expect_equal(solution(arr[0..-2]), arr[-1])
end

def expect_equal(a, b)
  a == b
end

#############################################################

# non-empty zero-indexed array
# N integers
# 0 < P < N
# N < 2; 100.000 >
# arr[i] < -1.000; 1000 >

arrays_to_test = [
  [3,1,2,4,3, 1],           # codility example
  [1,4, 3],                 # two positive numbers
  [-100,-50, 50],           # two negative numbers
  [5,5, 0],                 # two equal numbers
  [-100, 50, 150],          # positive and negative number
  [1,2,3,4,5,6,7, 2],       # positive numbers
  [7,2,1,6,3,4, 3],
  [10,5,15, 0],
  [-3,-4,-5, 2],            # negative numbers
  [-100,5,-200,80, 15],     # positive and negative numbers
  [10,-5,-15, 20]
]

test(arrays_to_test)
