#
# @lc app=leetcode id=1002 lang=ruby
#
# [1002] Find Common Characters
#

# @lc code=start
# @param {String[]} words
# @return {String[]}
def common_chars(words)
  words.first.chars.uniq.map{|c|[c]*(words.map{|s|s.count(c)}.min)}.flatten
end
# @lc code=end

