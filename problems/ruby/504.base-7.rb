#
# @lc app=leetcode id=504 lang=ruby
#
# [504] Base 7
#

# @lc code=start
# @param {Integer} num
# @return {String}
def convert_to_base7(num)
  symbol = num.negative? ? -1 : 1
  num *= symbol
  base_7 = ""
  while num > 6 do
    base_7 = (num % 7).to_s + base_7
    num /= 7
  end
  (num * symbol).to_s + base_7
end
# @lc code=end

