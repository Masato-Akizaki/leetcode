#
# @lc app=leetcode id=985 lang=ruby
#
# [985] Sum of Even Numbers After Queries
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(nums, queries)
  arr = []
  sum = nums.select(&:even?).sum
  queries.each do |query|
    pre = nums[query[1]]
    pos = nums[query[1]] + query[0]
    nums[query[1]] = pos
    if pre.odd? && pos.even?
      sum += pos
    elsif pre.even? && pos.odd?
      sum -= pre
    elsif pre.even? && pos.even?
      sum += query[0]
    end
    arr << sum
  end
  arr
end
# @lc code=end

