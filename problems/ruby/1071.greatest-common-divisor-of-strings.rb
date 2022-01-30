#
# @lc app=leetcode id=1071 lang=ruby
#
# [1071] Greatest Common Divisor of Strings
#

# @lc code=start
# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  return '' if str1[0] != str2[0]
  str1, str2 = str2, str1 if str1.length < str2.length
  [*0...str2.length].reverse_each do |i|
    x = str2[0..i]
    next if str1.length % x.length != 0 || str2.length % x.length != 0
    n1 = str1.length / x.length
    n2 = str2.length / x.length
    return x if x * n1 == str1 && x * n2 == str2
  end
  return ''
end
# @lc code=end

""ABABAB"\n"ABAB""