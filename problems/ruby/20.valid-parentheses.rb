#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
  brackets = {"(" => ")", "[" => "]", "{" => "}"}
  open_brackets = []
  i = 0
  return false if s.length.odd?
  while i < s.length do
    if brackets.has_key?(s[i])
      open_brackets << s[i]
    elsif brackets.has_value?(s[i])
      return false unless s[i] == brackets[open_brackets.pop]
    end
    i += 1
  end
  open_brackets.empty?
end
# @lc code=end

