# Build a wall. The wall should be built of cuboid stone blocks
# (that is, all sides of such blocks are rectangular).
# Your task is to compute the minimum number of blocks needed to build the wall.
# codility 100%

module StoneWall

  def solution(h)
    stones = h.length
    stock = []
    h.each do |stone|
      while stock.last && stone < stock.last
        stock.pop
      end
      if stock.last && stone == stock.last
        stones -= 1
      else
        stock << stone
      end
    end
    stones
  end

end
