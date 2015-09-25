# codility 100%

module TreeHeight

  def solution(t)
    height = 0
    @max_height = 0
    find_max_height(t, height)
    @max_height
  end

  def find_max_height(tree, height)
    if tree.l
      height += 1
      @max_height = [@max_height, height].max
      find_max_height(tree.l, height)
      height -= 1
    end
    if tree.r
      height += 1
      @max_height = [@max_height, height].max
      find_max_height(tree.r, height)
      height -= 1
    end
  end

end
