#
# @lc app=leetcode id=509 lang=ruby
#
# [509] Fibonacci Number
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def fib(n)
  hash = {0 => 0, 1 => 1}
  [*2..n].each do |n|
    hash[n] = hash[n-1] + hash[n-2]
  end
  hash[n]
end
# @lc code=end

