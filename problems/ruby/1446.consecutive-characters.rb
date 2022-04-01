#
# @lc app=leetcode id=1446 lang=ruby
#
# [1446] Consecutive Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def max_power(s)
    substring = s[0]
    max = 0
    s[1..-1].each_char do |c|
        if c != substring[0]
            max = [max, substring.length].max
            substring = ""
        end
        substring += c
    end
    [max, substring.length].max
end
# @lc code=end