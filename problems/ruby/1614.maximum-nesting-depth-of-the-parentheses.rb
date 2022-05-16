#
# @lc app=leetcode id=1614 lang=ruby
#
# [1614] Maximum Nesting Depth of the Parentheses
#

# @lc code=start
# @param {String} s
# @return {Integer}
def max_depth(s)
    d = 0
    max = 0
    s.gsub(/[0-9]|\+|\-|\*|\//, "").each_char do |c|
        d += 1 if c == "("
        d -= 1 if c == ")"
        max = [max, d].max
    end
    max
end
# @lc code=end