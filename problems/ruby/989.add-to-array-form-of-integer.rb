#
# @lc app=leetcode id=989 lang=ruby
#
# [989] Add to Array-Form of Integer
#

# @lc code=start
# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  (num.join.to_i + k).to_s.split('').map(&:to_i)
end
# @lc code=end

