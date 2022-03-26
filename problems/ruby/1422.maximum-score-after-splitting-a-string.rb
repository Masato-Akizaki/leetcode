#
# @lc app=leetcode id=1422 lang=ruby
#
# [1422] Maximum Score After Splitting a String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def max_score(s)
    scores = []
    for i in [*0..s.length - 2] do
        scores << s[0..i].count("0") + s[i+1..-1].count("1")
    end
    scores.max
end
# @lc code=end