#
# @lc app=leetcode id=144 lang=ruby
#
# [144] Binary Tree Preorder Traversal
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
# @return {Integer[]}
def preorder_traversal(root)
  res = []
  return res unless root
  res << root.val
  res << preorder_traversal(root.left) if root.left
  res << preorder_traversal(root.right) if root.right
  res.flatten
end

# @lc code=end

