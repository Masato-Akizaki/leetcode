#
# @lc app=leetcode id=1047 lang=ruby
#
# [1047] Remove All Adjacent Duplicates In String
#

# @lc code=start
# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []
  s.each_char do |c|
    if stack[-1] == c
      stack.pop
    else
      stack << c
    end
  end
  stack.join
end
# @lc code=end

