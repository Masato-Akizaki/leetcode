#
# @lc app=leetcode id=884 lang=ruby
#
# [884] Uncommon Words from Two Sentences
#

# @lc code=start
# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  (s1.split(" ") + s2.split(" ")).tally.select {|k,v| v == 1}.keys
end
# @lc code=end

