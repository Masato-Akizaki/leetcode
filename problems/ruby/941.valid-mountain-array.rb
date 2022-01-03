#
# @lc app=leetcode id=941 lang=ruby
#
# [941] Valid Mountain Array
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  return false if arr.length < 2
  dif = []
  arr.each_cons(2) do |i, j|
    return false if j - i == 0
    dif << j - i
  end
  return false if dif[0] < 0
  dif.slice_when { |a, b| a * b < 0 }.to_a.length == 2
end
# @lc code=end

