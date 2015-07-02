# codility 100%
# given a non-empty zero-indexed array A of N integers,
# return the minimal positive integer (greater than 0) that does not occur in A.
# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−2,147,483,648..2,147,483,647]

module MissingInteger

  def solution(a)
    sorted_arr = a.select {|x| x>0 }.sort!
    uniq_arr = sorted_arr.uniq

    return 1 unless uniq_arr[0] == 1

    for i in 0...uniq_arr.length-1 do
      return uniq_arr[i]+1 unless uniq_arr[i] == uniq_arr[i+1]-1
    end

    return uniq_arr[-1]+1
  end

end
