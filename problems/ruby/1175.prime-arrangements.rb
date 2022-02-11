#
# @lc app=leetcode id=1175 lang=ruby
#
# [1175] Prime Arrangements
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
require 'prime'
def num_prime_arrangements(n)
  t = Prime.each(n).count
  (1..(n-t)).reduce(1, :*) * (1..t).reduce(1, :*) % (10**9 + 7) 
end

# @lc code=end