#
# @lc app=leetcode id=2099 lang=ruby
#
# [2099] Find Subsequence of Length K With the Largest Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
    indexs = []
    nums_copy = nums.dup
    nums.sort[nums.length-k..nums.length-1].each do |n|
        indexs << nums.index(n)
        nums[nums.index(n)] = nil
    end
    indexs.sort.map{|x| nums_copy[x]}
end
# @lc code=end