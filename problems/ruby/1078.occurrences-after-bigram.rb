#
# @lc app=leetcode id=1078 lang=ruby
#
# [1078] Occurrences After Bigram
#

# @lc code=start
# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
  text = text.split(" ")
  thard = []
  text.each_index do |i|
    thard << text[i+2] if text[i] == first && text[i+1] == second && text[i+2]
  end
  thard
end
# @lc code=end

