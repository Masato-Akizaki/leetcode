#
# @lc app=leetcode id=119 lang=ruby
#
# [119] Pascal's Triangle II
#

# @lc code=start
# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  res = []
  for n in 0..row_index do
    arr = [1]
    if n >= 2
      for i in 1..(res.last.length - 1) do
        arr << res.last[i-1] + res.last[i]
      end
    end
    arr << 1 if n >= 1
    res << arr
  end
  res[row_index]
end
# @lc code=end

