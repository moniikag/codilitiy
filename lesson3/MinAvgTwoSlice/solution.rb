# A non-empty zero-indexed array A consisting of N integers is given.
# A pair of integers (P, Q), such that 0 ≤ P < Q < N, is called a slice of array A
# (notice that the slice contains at least two elements).
# The goal is to find the starting position of a slice whose average is minimal.
# N is an integer within the range [2..100,000];
# each element of array A is an integer within the range [−10,000..10,000].

# codility 100%
module MinAvgTwoSlice

  def solution(a)
    return 0 if a.length < 2
    a.map!{|el| el.to_f }

    avg_last_two = 0.0
    total_min_avg = avg_so_far = avg_for_previous = (a[0]+a[1])/2
    the_beginning = current_beginning = 0

    for i in 2...a.length do
      avg_last_two = (a[i]+a[i-1])/2
      avg_so_far = ((avg_for_previous*(i-current_beginning))+a[i])/(i-current_beginning+1)
      if avg_last_two < avg_so_far
        avg_for_previous = avg_last_two
        current_beginning = i-1
      else
        avg_for_previous = avg_so_far
      end
      if avg_for_previous < total_min_avg
        total_min_avg = avg_for_previous
        the_beginning = current_beginning
      end
    end
    return the_beginning
  end
end
