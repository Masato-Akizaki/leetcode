#
# @lc app=leetcode id=108 lang=ruby
#
# [108] Convert Sorted Array to Binary Search Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.length == 0
  mid = (0 + nums.length - 1) / 2
  tree = TreeNode.new(nums[mid])
  tree.left = sorted_array_to_bst(nums[0..mid-1]) if 0 <= mid - 1
  tree.right = sorted_array_to_bst(nums[mid+1..nums.length-1]) if mid + 1 <= nums.length - 1
  tree
end
# @lc code=end

