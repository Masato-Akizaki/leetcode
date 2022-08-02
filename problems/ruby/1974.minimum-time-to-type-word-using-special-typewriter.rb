#
# @lc app=leetcode id=1974 lang=ruby
#
# [1974] Minimum Time to Type Word Using Special Typewriter
#

# @lc code=start
# @param {String} word
# @return {Integer}
def min_time_to_type(word)
    t = 0
    word = "a" + word
    [*1...word.length].each do |i|
        t += [(word[i].ord - word[i-1].ord).abs, 26 - (word[i].ord - word[i-1].ord).abs ].min
        t += 1
    end
    t
end
# @lc code=end