#
# @lc app=leetcode id=1437 lang=ruby
#
# [1437] Check If All 1's Are at Least Length K Places Away
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
    d = 0
    first_index = nums.index(1)
    nums[first_index..-1].each_with_index do |num, i|
        if num == 1
            return false if i > 0 && d < k 
            d = 0
        else
            d += 1
        end
    end
    true
end
# @lc code=end