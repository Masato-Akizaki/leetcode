#
# @lc app=leetcode id=1768 lang=ruby
#
# [1768] Merge Strings Alternately
#

# @lc code=start
# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    merged_string = ""
    [*0...[word1.length, word2.length].max].each do |i|
        merged_string += word1[i] if word1[i]
        merged_string += word2[i] if word2[i]
    end
    merged_string
end
# @lc code=end