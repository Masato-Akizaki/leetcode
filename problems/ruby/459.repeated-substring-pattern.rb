#
# @lc app=leetcode id=459 lang=ruby
#
# [459] Repeated Substring Pattern
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  substring = ""
  len = s.length
  s.each_char do |c|
    substring += c
    next if len % substring.length != 0
    next if substring == s
    return true if substring * (len / substring.length) == s
  end
  false
end
# @lc code=end

