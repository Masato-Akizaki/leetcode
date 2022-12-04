#
# @lc app=leetcode id=43 lang=ruby
#
# [43] Multiply Strings
#

# @lc code=start
# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  nums = {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9
  }
  acc = 0
  num1 = num1.split("").reverse
  num2 = num2.split("").reverse
  num1.each_with_index do |n1, i|
      num2.each_with_index do |n2, j|
          acc += (nums[n1]*10**i) * (nums[n2]*10**j)
      end
  end
  acc.to_s
end
# @lc code=end

