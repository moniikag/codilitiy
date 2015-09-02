# return biggest binary gap (0s) in binary representation
# 1 must appear before and after the gap, e.g. 100001 => 4
# codility 100%

module BinaryGap

  def solution(n)
    binary = n.to_s(2)
    max_gap = 0
    temporary_gap = 0
    one_appeared = false
    binary.each_char do |char|
      one_appeared = true if char == '1'
      if char == '0' && one_appeared
        temporary_gap += 1
      elsif char == '1'
        max_gap = [max_gap, temporary_gap].max
        temporary_gap = 0
      end
    end
    max_gap
  end

end
