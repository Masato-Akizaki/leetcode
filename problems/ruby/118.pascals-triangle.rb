#
# @lc app=leetcode id=118 lang=ruby
#
# [118] Pascal's Triangle
#

# @lc code=start
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  res = []
  num_rows.times do |n|
    arr = [1]
    if n >= 2
      for i in 1..(res.last.length - 1) do
        arr << res.last[i-1] + res.last[i]
      end
    end
    arr << 1 if n >= 1
    res << arr
  end
  res
end
# @lc code=end

