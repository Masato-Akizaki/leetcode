#
# @lc app=leetcode id=762 lang=ruby
#
# [762] Prime Number of Set Bits in Binary Representation
#

# @lc code=start
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
require "prime"

def count_prime_set_bits(left, right)
  [*left..right].map {|x| x.to_s(2).count("1")}.count {|x| x.prime?}
end

# @lc code=end
