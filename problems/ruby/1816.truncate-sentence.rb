#
# @lc app=leetcode id=1816 lang=ruby
#
# [1816] Truncate Sentence
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {String}
def truncate_sentence(s, k)
    s.split(" ")[0...k].join(" ")
end
# @lc code=end