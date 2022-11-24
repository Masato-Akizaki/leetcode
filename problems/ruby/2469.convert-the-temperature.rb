#
# @lc app=leetcode id=2469 lang=ruby
#
# [2469] Convert the Temperature
#

# @lc code=start
# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
  [celsius + 273.15, celsius * 1.80 + 32.00]
end
# @lc code=end

