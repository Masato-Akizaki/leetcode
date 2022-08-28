#
# @lc app=leetcode id=2108 lang=ruby
#
# [2108] Find First Palindromic String in the Array
#

# @lc code=start
# @param {String[]} words
# @return {String}
def first_palindrome(words)
    words.each do |word|
        return word if word == word.reverse
    end
    return ""
end
# @lc code=end