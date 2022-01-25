#
# @lc app=leetcode id=1033 lang=ruby
#
# [1033] Moving Stones Until Consecutive
#

# @lc code=start
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer[]}
def num_moves_stones(a, b, c)
  min = 0
  stones = [a, b, c].sort
  a, b, c = stones[0], stones[1], stones[2]
  until  b - a == 1 && c - b == 1
    if b - a == 2
      c = b
      b -= 1
    elsif c - b == 2
      a = b
      b += 1
    elsif b - a == 1
      c = b + 1 
    elsif c - b == 1
      a = b - 1
    else
      b = a + 1
    end
    min += 1
  end

  max = 0
  a, b, c = stones[0], stones[1], stones[2]
  until  b - a == 1 && c - b == 1
    if b - a > c - b
      a += 1
    else
      c -= 1
    end
    max += 1
  end

  [min, max]
end
# @lc code=end

