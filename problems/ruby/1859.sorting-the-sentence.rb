#
# @lc app=leetcode id=1859 lang=ruby
#
# [1859] Sorting the Sentence
#

# @lc code=start
# @param {String} s
# @return {String}
def sort_sentence(s)
    s.split(" ").sort_by{|x| x[-1]}.map{|x| x.slice(0, x.size-1)}.join(" ")
end
# @lc code=end