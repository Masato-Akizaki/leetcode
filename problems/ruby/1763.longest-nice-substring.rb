#
# @lc app=leetcode id=1763 lang=ruby
#
# [1763] Longest Nice Substring
#

# @lc code=start
# @param {String} s
# @return {String}
def longest_nice_substring(s)
    substrings = []
    s.chars.each_with_index do |c, i|
        t = i
        while t < s.length
            break unless s.include?(s[t].swapcase)
            t += 1
            substrings << s[i..t] if s[i..t].chars.select{|x| x.match?(/[A-Z]/)}.uniq.sort == s[i..t].chars.select{|x| x.match?(/[a-z]/)}.map(&:swapcase).uniq.sort
        end
    end
    substrings.max {|a, b| a.length <=> b.length } || ""
end
# @lc code=end