#
# @lc app=leetcode id=29 lang=ruby
#
# [29] Divide Two Integers
#

# @lc code=start
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  sign = (divisor > 0) ^ (dividend > 0) ? -1 : 1
		
  return 2**31-1 if dividend == -2**31 && divisor == -1

  dividend = dividend.abs
  divisor = divisor.abs
  result = 0
  
  while divisor <= dividend
    div = divisor
    temp = 1
    while (div << 1) <= dividend
      temp <<= 1
      div <<= 1
    end
    dividend -= div
    result += temp
  end
  
  result*sign 
end
# @lc code=end

