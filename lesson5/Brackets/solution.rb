# A string S consisting of N characters is considered to be properly nested if any of the following conditions is true:
# S is empty;
# S has the form "(U)" or "[U]" or "{U}" where U is a properly nested string;
# S has the form "VW" where V and W are properly nested strings.
# return 1 if S is properly nested and 0 otherwise
# codility 100%

module Brackets

  def solution(s)
    return 1 if s.length == 0
    pairs = { ')' => '(', ']' => '[', '}' => '{' }
    brackets = []
    s.each_char do |char|
      if ['(', '[', '{'].include?(char)
        brackets << char
      else
        return 0 if brackets.empty? || brackets.pop != pairs[char]
      end
    end
    brackets.empty? ? 1 : 0
  end

end
