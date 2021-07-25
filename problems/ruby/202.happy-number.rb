#
# @lc app=leetcode id=202 lang=ruby
#
# [202] Happy Number
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  array = []
  until n == 1 do
    n = n.to_s.chars.sum{ |x| x.to_i ** 2}
    return false if array.include?(n)
    array << n
  end
  true
end
# @lc code=end

