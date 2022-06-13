#
# @lc app=leetcode id=1742 lang=ruby
#
# [1742] Maximum Number of Balls in a Box
#

# @lc code=start
# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
    hash = Hash.new(0)
    [*low_limit..high_limit].each do |n|
        hash[n.digits.sum] += 1
    end
    hash.values.max
end
# @lc code=end