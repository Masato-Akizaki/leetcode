#
# @lc app=leetcode id=788 lang=ruby
#
# [788] Rotated Digits
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  i = 1
  count = 0
  list = ["2", "5", "6", "9"]
  invalid_list = ["3", "4", "7"]
  while i <= n
    digits = i.to_s.chars
    count += 1 if list.any? {|l| digits.include?(l)} && !(invalid_list.any? {|l| digits.include?(l)})
    i += 1 
  end
  count
end
# @lc code=end

