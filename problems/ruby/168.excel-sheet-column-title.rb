#
# @lc app=leetcode id=168 lang=ruby
#
# [168] Excel Sheet Column Title
#

# @lc code=start
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  hash = Hash[*[[*1..26], [*'A'..'Z']].transpose.flatten]
  res = ''
  while column_number > 26
    remainder = column_number % 26
    column_number /= 26
    if remainder == 0
      remainder = 26
      column_number -= 1
    end
    res = hash[remainder] + res
  end
  res = hash[column_number] + res
end
# @lc code=end

