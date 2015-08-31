# non-empty zero-indexed arrays A and B
# 0 represents a fish flowing upstream,
# 1 represents a fish flowing downstream
# a - sizes of fish (all distinct). bigger fish eat smaller fish
# b - direction of the fish
# result - how many fish alive in the end
# codility 100/100

module Fish

  def solution(a,b)
    upstream = []   # just swimming - 0
    downstream = [] # looking for a figh - 1
    count = 0

    for i in 0...a.length do
      if b[i] == 0
        downstream.empty? ? (count += 1) : (upstream << a[i])
      else # b[i] == 1
        downstream << a[i]
      end

      loop do
        break if upstream.empty? || downstream.empty?
        if downstream[-1] > upstream[-1]
          upstream.pop
        else # downstream[-1] < upstream[-1]
          downstream.pop
          if downstream.empty?
            count += upstream.size
            upstream.clear
          end
        end
      end
    end
    return count + [upstream.size, downstream.size].max
  end

end
