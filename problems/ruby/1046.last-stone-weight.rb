#
# @lc app=leetcode id=1046 lang=ruby
#
# [1046] Last Stone Weight
#

# @lc code=start
# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  while stones.length > 1
    s1 = stones.sort!.pop
    s2 = stones.sort!.pop
    stones << (s1 - s2) if s1 > s2
  end
  return 0 if stones.empty? 
  stones.min
end
# @lc code=end

