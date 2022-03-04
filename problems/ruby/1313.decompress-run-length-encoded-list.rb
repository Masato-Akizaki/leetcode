#
# @lc app=leetcode id=1313 lang=ruby
#
# [1313] Decompress Run-Length Encoded List
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    arr = []
    nums.each_slice(2) do |n, m|
        arr += [m] * n
    end
    arr
end
# @lc code=end