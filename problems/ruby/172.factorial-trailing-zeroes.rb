#
# @lc app=leetcode id=172 lang=ruby
#
# [172] Factorial Trailing Zeroes
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  count = 0
  while n > 0
    count += n/5
    n /= 5
  end
  return count
end
# @lc code=end

