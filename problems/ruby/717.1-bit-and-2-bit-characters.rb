#
# @lc app=leetcode id=717 lang=ruby
#
# [717] 1-bit and 2-bit Characters
#

# @lc code=start
# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  i = 0
  array = []
  while i < bits.length
    if bits[i] == 1
      array << bits[i..i+1].join
      i += 2
    else
      array << bits[i].to_s
      i += 1
    end
  end
  p array
  array[-1] == "0"
end
# @lc code=end

