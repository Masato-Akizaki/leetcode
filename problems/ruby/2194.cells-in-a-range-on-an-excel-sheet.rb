#
# @lc app=leetcode id=2194 lang=ruby
#
# [2194] Cells in a Range on an Excel Sheet
#

# @lc code=start
# @param {String} s
# @return {String[]}
def cells_in_range(s)
  cells = []
  s = s.split(":")
  [*s[0][0]..s[-1][0]].each do |c|
      [*s[0][1]..s[-1][1]].each do |r|
          cells << c + r
      end
  end
  cells
end
# @lc code=end