#
# @lc app=leetcode id=2200 lang=ruby
#
# [2200] Find All K-Distant Indices in an Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  key_indexs = []
  nums.each_with_index{|x,i| key_indexs << i if x == key}
  k_distant = []
  [*0...nums.length].each do |i|
      k_distant << i if key_indexs.map{|x| (i - x).abs}.min <= k
  end
  k_distant
end
# @lc code=end