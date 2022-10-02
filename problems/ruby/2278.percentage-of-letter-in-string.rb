#
# @lc app=leetcode id=2278 lang=ruby
#
# [2278] Percentage of Letter in String
#

# @lc code=start
# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
    hash = s.chars.tally
    100 * hash[letter].to_i / hash.values.sum
end
# @lc code=end