#
# @lc app=leetcode id=2164 lang=ruby
#
# [2164] Sort Even and Odd Indices Independently
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
    arr = []
    evens = nums.select.with_index{|n,i| i.even?}.sort
    odds = nums.select.with_index{|n,i| i.odd?}.sort.reverse
    [*0...([evens.length, odds.length].max)].each do |i|
        arr << evens[i]
        arr << odds[i] if odds[i]
    end
    arr
end
# @lc code=end