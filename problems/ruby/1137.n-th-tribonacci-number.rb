#
# @lc app=leetcode id=1137 lang=ruby
#
# [1137] N-th Tribonacci Number
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  arr = [0, 1, 1]
  return arr[n] if n < 3
  (n-2).times do
    arr << arr[-3] + arr[-2] + arr[-1]
  end
  arr.last
end
# @lc code=end

