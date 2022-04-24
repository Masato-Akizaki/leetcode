#
# @lc app=leetcode id=1512 lang=ruby
#
# [1512] Number of Good Pairs
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    count = 0
    nums.each_with_index do |num, i|
        count += nums[(i+1)..-1].count(num)
    end
    count
end
# @lc code=end