#
# @lc app=leetcode id=2085 lang=ruby
#
# [2085] Count Common Words With One Occurrence
#

# @lc code=start
# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
    (words1.tally.select{|k,v| v == 1}.keys + words2.tally.select{|k,v| v == 1}.keys).tally.select{|k,v| v == 2}.keys.length
end
# @lc code=end