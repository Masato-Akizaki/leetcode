#
# @lc app=leetcode id=1684 lang=ruby
#
# [1684] Count the Number of Consistent Strings
#

# @lc code=start
# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
    allowed = allowed.chars.join("|")
    words.map{ |x| x.gsub(/#{allowed}/, '')}.count("")
end
# @lc code=end