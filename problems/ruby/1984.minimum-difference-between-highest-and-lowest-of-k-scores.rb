#
# @lc app=leetcode id=1984 lang=ruby
#
# [1984] Minimum Difference Between Highest and Lowest of K Scores
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
    diff = []
    nums.sort.each_cons(k) do |arr|
        diff << arr.max - arr.min
    end
    diff.min
end
# @lc code=end