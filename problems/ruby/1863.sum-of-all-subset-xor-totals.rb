#
# @lc app=leetcode id=1863 lang=ruby
#
# [1863] Sum of All Subset XOR Totals
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
    sum = 0
    [*1..nums.length].each do |i|
       nums.combination(i) do |arr|
           sum += arr.inject(:^) 
       end
    end
    sum
end
# @lc code=end