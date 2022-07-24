#
# @lc app=leetcode id=1935 lang=ruby
#
# [1935] Maximum Number of Words You Can Type
#

# @lc code=start
# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
    text.split(" ").length - text.split(" ").count{|c| broken_letters.chars.any? {|i| c.include?(i)} }
end
# @lc code=end