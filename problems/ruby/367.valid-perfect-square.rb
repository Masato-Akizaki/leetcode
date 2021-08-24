#
# @lc app=leetcode id=367 lang=ruby
#
# [367] Valid Perfect Square
#

# @lc code=start
# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  (0..num).bsearch { |x| x * x >=num } ** 2 == num
end
# @lc code=end

