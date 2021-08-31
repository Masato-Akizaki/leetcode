#
# @lc app=leetcode id=405 lang=ruby
#
# [405] Convert a Number to Hexadecimal
#

# @lc code=start
# @param {Integer} num
# @return {String}
def to_hex(num)
  hex = { 10 => "a", 11 => "b", 12 => "c", 13 => "d", 14 => "e", 15 => "f" }
  res = ""
  return "0" if num == 0
  if num < 0
    num = 2 ** 32 + num
  end
  
  while num > 0 do
    if (num % 16) >= 10
      res = hex[num % 16] + res
    else
      res = (num % 16).to_s + res
    end
    num /= 16
  end
  res
end
# @lc code=end

