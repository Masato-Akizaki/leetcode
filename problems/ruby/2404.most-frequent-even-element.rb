#
# @lc app=leetcode id=2404 lang=ruby
#
# [2404] Most Frequent Even Element
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
    return -1 if nums.select(&:even?).length == 0
    nums.sort.select(&:even?).tally.max{|k,v| k[1] <=> v[1]}[0]
end
# @lc code=end