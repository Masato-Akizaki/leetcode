#
# @lc app=leetcode id=2255 lang=ruby
#
# [2255] Count Prefixes of a Given String
#

# @lc code=start
# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
    words.count{|w| s.start_with?(w)}
end
# @lc code=end