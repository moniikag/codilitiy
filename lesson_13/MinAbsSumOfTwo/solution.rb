# return min abs sum of two (allowed sum of two elements or min_el+min_el)
# codility 100%

module MinAbsSumOfTwo

  def solution(a)
    arr = a.sort
    return 0 if arr.include?(0)
    return arr[0]*2        if arr[0] > 0
    return (arr[-1]*2).abs if arr[-1] < 0

    min_abs_value = arr[0].abs
    min_abs_sum   = min_abs_value*2
    positive = arr.length-1

    for i in 0..arr.length-1
      min_abs_value = [min_abs_value, arr[i].abs].min

      while arr[i] < 0 && arr[positive] > 0 && positive > 0 &&
        (arr[i]+arr[positive-1]).abs <= (arr[i]+arr[positive]).abs
          positive -= 1
      end

      min_abs_sum = [min_abs_sum, (arr[i]+arr[positive]).abs].min
    end

    return [min_abs_value*2, min_abs_sum].min

  end

end
