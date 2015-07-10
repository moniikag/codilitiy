# codility 100%
# A string S consisting of N characters is called properly nested if:
# S is empty;
# S has the form "(U)" where U is a properly nested string;
# S has the form "VW" where V and W are properly nested strings.
# N is an integer within the range [0..1,000,000];
# string S consists only of the characters "(" and/or ")"
# given S = "(()(())())", the function should return 1 and given S = "())", the function should return 0

module Nesting

  def solution(s)
    return 1 if s.length == 0
    counter = 0
    for i in 0...s.length do
      counter +=1 if s[i] == "("
      counter -= 1 if s[i] == ")"
      return 0 if counter < 0
    end
    return 1 if counter == 0
    return 0
  end

end
