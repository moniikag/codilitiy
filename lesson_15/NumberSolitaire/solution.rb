# find max sum. possible steps 1-6 (as with dice roll), always include 1-st and last el. in arr
# codility 100%

module NumberSolitaire

  def solution(a)
    case a.length
    when 0 then return 0
    when 1 then return a[0]
    else
      find_max_possible_sum(a)
    end
  end

  def find_max_possible_sum(a)
    if a.length > 6
      max_sum_at = a[0..5] + [nil]*(a.length-6)
    else
      max_sum_at = a.dup
    end
    max_sum_at[0] = 0

    for i in 0...a.length-1
      1.upto(6) do |dice|
        field = i+dice
        break if field > a.length-1

        if max_sum_at[field].nil?
          max_sum_at[field] = max_sum_at[i] + a[field]
        else
          max_sum_at[field] = [max_sum_at[i] + a[field], max_sum_at[field]].max
        end
      end
    end
    return max_sum_at[-1]+a[0]
  end

end
