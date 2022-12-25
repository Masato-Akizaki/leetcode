#
# @lc app=leetcode id=78 lang=ruby
#
# [78] Subsets
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  res = [[]]
  [*1..nums.length].each do |i|
      nums.combination(i).to_a.map{|x| res << x}
  end
  res
end
# @lc code=end

