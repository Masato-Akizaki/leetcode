#
# @lc app=leetcode id=89 lang=ruby
#
# [89] Gray Code
#

# @lc code=start
# @param {Integer} n
# @return {Integer[]}
def gray_code(n)
  res = [0]
  for i in 1..n do
      size = res.length
      while size >= 1 do
          res << (res[size - 1] + (1 << (i - 1)))
          size = size - 1
      end
  end
  res
end
# @lc code=end

