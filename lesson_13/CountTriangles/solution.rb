# count max triangle-sets in array

module CountTriangles

#codility 100%
  def solution(a)
    count = 0
    arr = a.sort
    n = arr.size
    for first in 0..n-3
      third = first+2
      for second in first+1..n-2
        while ((third < n) && ((arr[first] + arr[second]) > arr[third]))
          third += 1
        end
        count += third-second-1
      end
    end
    return count
  end


# codility 100% 25%
  def solution_binary(a)
    count = 0
    arr = a.sort
    max_index = arr.length-1
    for i in 0..max_index-2
      for j in i+1..max_index-1
        increase = max_triangles_for_given_two_walls(arr, arr[i], arr[j], j, max_index)
        count += increase
      end
    end
    return count
  end

  def max_triangles_for_given_two_walls(arr, wall_1, wall_2, wall_2_index, max_index)
    min = wall_2_index +1
    max = max_index
    wall_3_max_index = loop do
      mid = (min+max)/2
      break mid if min == max && wall_1 + wall_2 > arr[mid]
      break nil if min == max && wall_1 + wall_2 <= arr[mid]
      if wall_1 + wall_2 > arr[mid]
        break mid if wall_1 + wall_2 <= arr[mid+1]
        min = mid+1
        break nil if min > max_index
      else
        max = mid-1
        break nil if max == wall_2_index
      end
    end
    wall_3_max_index.nil? ? 0 : (wall_3_max_index - wall_2_index)
  end

end

