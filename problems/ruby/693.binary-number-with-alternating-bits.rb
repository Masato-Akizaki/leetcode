#
# @lc app=leetcode id=693 lang=ruby
#
# [693] Binary Number with Alternating Bits
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  binary = n.to_s(2).chars
  binary.each_with_index do |v,i|
    next if i == binary.length-1
    return false if v.to_i == binary[i+1].to_i 
  end
  return true 
end
# @lc code=end

