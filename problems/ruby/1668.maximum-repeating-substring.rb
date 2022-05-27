#
# @lc app=leetcode id=1668 lang=ruby
#
# [1668] Maximum Repeating Substring
#

# @lc code=start
# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
    k = 0
    substring = word
    while sequence.include?(substring)
        k += 1
        substring += word 
    end
    return k
end
# @lc code=end