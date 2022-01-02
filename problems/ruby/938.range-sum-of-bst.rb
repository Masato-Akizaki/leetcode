#
# @lc app=leetcode id=938 lang=ruby
#
# [938] Range Sum of BST
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
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  return 0 if root.nil?
  root.val = 0 if root.val < low || root.val > high
  root.val + range_sum_bst(root.left, low, high) + range_sum_bst(root.right, low, high)
end
# @lc code=end

