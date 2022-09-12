#
# @lc app=leetcode id=2185 lang=ruby
#
# [2185] Counting Words With a Given Prefix
#

# @lc code=start
# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
    count = 0
    words.each do |w|
      count += 1 if w.start_with?(pref)
    end
    count
end
# @lc code=end