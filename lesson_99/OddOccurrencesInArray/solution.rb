# non-empty zero-indexed array
# return unpaired element


module OddOccurrencesInArray

  def solution(a)
    is_unpaired = Hash.new
    a.each do |el|
      is_unpaired[el] = is_unpaired[el] ? false : true
    end
    is_unpaired.key(true)
  end

end
