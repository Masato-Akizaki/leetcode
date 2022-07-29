#
# @lc app=leetcode id=1961 lang=ruby
#
# [1961] Check If String Is a Prefix of Array
#

# @lc code=start
# @param {String} s
# @param {String[]} words
# @return {Boolean}
def is_prefix_string(s, words)
    str = ""
    words.each do |x|
        str += x 
        return true if str == s
        break if str.length > s.length
    end
    false
end
# @lc code=end