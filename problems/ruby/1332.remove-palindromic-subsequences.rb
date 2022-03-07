#
# @lc app=leetcode id=1332 lang=ruby
#
# [1332] Remove Palindromic Subsequences
#

# @lc code=start
# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
    return 0 if s.empty?
    return 1 if s.reverse == s
    2
end
# @lc code=end