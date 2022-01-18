#
# @lc app=leetcode id=1009 lang=ruby
#
# [1009] Complement of Base 10 Integer
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  b = n.to_s(2)
  b.each_char.with_index do |c, i|
    b[i] = c == "1" ? "0" : "1"
  end
  b.to_i(2)
end
# @lc code=end

