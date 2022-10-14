#
# @lc app=leetcode id=2341 lang=ruby
#
# [2341] Maximum Number of Pairs in Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
    arr = [0, 0]
    nums.tally.values.each do |v|
        arr[0] += v / 2
        arr[1] += v % 2
    end
    arr
end
# @lc code=end