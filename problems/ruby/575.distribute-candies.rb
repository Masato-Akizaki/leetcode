#
# @lc app=leetcode id=575 lang=ruby
#
# [575] Distribute Candies
#

# @lc code=start
# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
  candy_type.length / 2 >= candy_type.uniq.length ? candy_type.uniq.length : candy_type.length / 2
end
# @lc code=end

