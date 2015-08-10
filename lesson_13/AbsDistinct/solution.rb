#codility 100%
#count distinct absolute values

module AbsDistinct

  def solution(a)
    aa = a.uniq
    aa.each_with_index do |el, i|
      aa[i] = el*(-1) if el < 0
    end
    return aa.uniq.length
  end

end
