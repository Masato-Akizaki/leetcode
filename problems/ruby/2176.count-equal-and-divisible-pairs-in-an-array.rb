#
# @lc app=leetcode id=2176 lang=ruby
#
# [2176] Count Equal and Divisible Pairs in an Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
    count = 0
    [*0..nums.length-2].each do |i|
        [*i+1..nums.length-1].each do |j|
            count += 1 if nums[i] == nums[j] && i * j % k == 0
        end
    end
    count
end
# @lc code=end