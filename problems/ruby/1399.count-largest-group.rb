#
# @lc app=leetcode id=1399 lang=ruby
#
# [1399] Count Largest Group
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  hash = Hash.new
  [*1..n].each do |i|
      sum = i.to_s.split("").map(&:to_i).sum
      hash[sum].nil? ? hash[sum] = 1 : hash[sum] += 1
  end
  hash.count{|k,v| v == hash.values.max}
end
# @lc code=end