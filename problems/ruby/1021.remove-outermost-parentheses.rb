#
# @lc app=leetcode id=1021 lang=ruby
#
# [1021] Remove Outermost Parentheses
#

# @lc code=start
# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  count = 0
  output = Array.new
  s.each_char do |c|
    output << c unless (count == 0 && c == "(") || (count == 1 && c == ")")
    count += 1 if c == "("
    count -= 1 if c == ")"
  end
  output.join
end
# @lc code=end

