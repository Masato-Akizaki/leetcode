#
# @lc app=leetcode id=2057 lang=ruby
#
# [2057] Smallest Index With Equal Value
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
    nums.each_with_index do |n, i|
        return i if i % 10 == n
    end
    -1
end
# @lc code=end