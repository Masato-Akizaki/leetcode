#
# @lc app=leetcode id=476 lang=ruby
#
# [476] Number Complement
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def find_complement(num)
  complement = ""
  num.to_s(2).chars do |i|
    complement += i == '1' ? '0' : '1'
  end
  complement.to_i(2)
end
# @lc code=end

