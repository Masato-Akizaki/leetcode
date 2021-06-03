#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_nums = { 
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  total = 0

  s.chars.each_with_index do |c, i|
    if roman_nums[s[i+1]] && roman_nums[c] < roman_nums[s[i+1]]
      total -= roman_nums[c]
    else
      total += roman_nums[c]
    end
  end
  total
end
# @lc code=end

