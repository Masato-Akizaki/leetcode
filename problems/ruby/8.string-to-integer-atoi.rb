#
# @lc app=leetcode id=8 lang=ruby
#
# [8] String to Integer (atoi)
#

# @lc code=start
# @param {String} s
# @return {Integer}
def my_atoi(s)
  num = ''
  s.each_char do |c|
    next if c == ' ' && num.length == 0
    break if (c == '+' || c == '-') && num.length > 0
    num += c if (c == '+' || c == '-') && num.length == 0
    break if (c =~ /[a-z]|[A-Z]|\.|\s/) != nil
    num += c if (c =~ /[0-9]/) != nil
  end
  return [num.to_i, 2 ** 31 - 1].min if num.to_i >= 0
  return [num.to_i, -2 ** 31].max if num.to_i < 0
end
# @lc code=end

