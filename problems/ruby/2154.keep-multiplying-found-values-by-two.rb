#
# @lc app=leetcode id=2154 lang=ruby
#
# [2154] Keep Multiplying Found Values by Two
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
    while nums.include?(original)
        original *= 2
    end
    original
end
# @lc code=end