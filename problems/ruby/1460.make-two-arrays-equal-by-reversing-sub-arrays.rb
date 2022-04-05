#
# @lc app=leetcode id=1460 lang=ruby
#
# [1460] Make Two Arrays Equal by Reversing Sub-arrays
#

# @lc code=start
# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
    target.sort == arr.sort
end
# @lc code=end