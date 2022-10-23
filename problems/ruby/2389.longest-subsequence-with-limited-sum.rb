#
# @lc app=leetcode id=2389 lang=ruby
#
# [2389] Longest Subsequence With Limited Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
    arr = []
    nums.sort.each do |n|
        arr << arr[-1].to_i + n
    end
    
    ans = []
    queries.each do |q|
        temp = Array.new(arr)
        ans << temp.push(q).sort!.rindex(q)
    end
    ans
end
# @lc code=end