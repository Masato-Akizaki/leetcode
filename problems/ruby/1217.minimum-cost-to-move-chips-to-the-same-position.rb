#
# @lc app=leetcode id=1217 lang=ruby
#
# [1217] Minimum Cost to Move Chips to The Same Position
#

# @lc code=start
# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
    [position.count(&:even?), position.count(&:odd?)].min
end

# @lc code=end