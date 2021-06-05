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
  return false if s.length.odd?
  s.each_char do |c|
    if brackets.has_key?(c)
      open_brackets << c
    elsif brackets.has_value?(c)
      return false unless c == brackets[open_brackets.pop]
    end
  end
  open_brackets.empty?
end
# @lc code=end

