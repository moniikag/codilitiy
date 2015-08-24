# find symmetry point for string (return correct index)
# return -1 if no symmetry point
# codility 100%

module StrSymmetryPoint

  def solution(s)
    return -1 if s.length % 2 == 0
    return 0 if s.length == 1
    for i in 0...s.length/2 do
      return -1 if s[i] != s[-i-1]
    end
    return s.length/2
  end

end
