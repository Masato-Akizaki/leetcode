#
# @lc app=leetcode id=453 lang=ruby
#
# [453] Minimum Moves to Equal Array Elements
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  nums = nums.sort!
  move_num = 0
  while nums.uniq.length > 1
    nums.map!{|x| x += 1}
    nums[-1] -= 1
    nums = nums.sort!
    move_num += 1
  end
  move_num
end
# @lc code=end

