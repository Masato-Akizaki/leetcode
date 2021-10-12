#
# @lc app=leetcode id=598 lang=ruby
#
# [598] Range Addition II
#

# @lc code=start
# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  return m * n if ops.empty?
  ops.map {|arr| arr[0]}.min * ops.map{|arr| arr[1]}.min
end
# @lc code=end

40000
40000
[]