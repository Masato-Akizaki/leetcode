#
# @lc app=leetcode id=1122 lang=ruby
#
# [1122] Relative Sort Array
#

# @lc code=start
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  pre_arr = []
  pos_arr = arr1.select { |x| !arr2.include?(x) }.sort
  hash = arr1.select { |x| arr2.include?(x) }.tally
  arr2.each do |x|
    pre_arr += [x] * hash[x]
  end
  pre_arr + pos_arr
end
# @lc code=end

