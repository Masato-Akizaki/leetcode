#
# @lc app=leetcode id=415 lang=ruby
#
# [415] Add Strings
#

# @lc code=start
# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  num1 = num1.chars
  num2 = num2.chars
  i = 1
  sum = 0
  while num1[-i] || num2[-i] do
    digits = 10 ** (i - 1)
    sum += (num1[-i].to_i + num2[-i].to_i) * digits
    i += 1
  end
  sum.to_s
end
# @lc code=end

