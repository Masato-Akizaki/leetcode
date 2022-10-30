#
# @lc app=leetcode id=2423 lang=ruby
#
# [2423] Remove Letter To Equalize Frequency
#

# @lc code=start
# @param {String} word
# @return {Boolean}
def equal_frequency(word)
    hash = word.chars.tally
    return true if hash.keys.uniq.length == 1
    return true if hash.values.uniq.length == 1 && hash.values.uniq.first == 1
    return false if hash.values.uniq.length != 2
    return true if hash.values.tally.min_by{|x| x[0]} == [1,1]
    return false if hash.values.uniq.sort[1] - hash.values.uniq.sort[0] != 1
    hash.values.tally.max_by{|x| x[0]}[1] == 1
end
# @lc code=end