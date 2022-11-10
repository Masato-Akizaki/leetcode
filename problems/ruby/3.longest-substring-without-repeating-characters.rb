#
# @lc app=leetcode id=3 lang=ruby
#
# [3] Longest Substring Without Repeating Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return s.length if s.length <= 1 || s.length == s.chars.uniq.length
  current_chars=[]
    max_length=0
    for i in 0...s.length
        if current_chars.include?(s[i])
            current_chars = current_chars[current_chars.index(s[i])+1..-1]
        end
        current_chars<<s[i]
        max_length = current_chars.length if current_chars.length > max_length
    end
    max_length
end
# @lc code=end

