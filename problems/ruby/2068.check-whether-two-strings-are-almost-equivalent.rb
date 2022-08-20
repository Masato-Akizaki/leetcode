#
# @lc app=leetcode id=2068 lang=ruby
#
# [2068] Check Whether Two Strings are Almost Equivalent
#

# @lc code=start
# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
    word1 = word1.chars.tally
    word2 = word2.chars.tally
    letters = (word1.keys + word2.keys).uniq.sort
    letters.each do |l|
        return false if (word1[l].to_i - word2[l].to_i).abs > 3
    end
    true
end
# @lc code=end