#
# @lc app=leetcode id=94 lang=ruby
#
# [94] Binary Tree Inorder Traversal
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
def inorder_traversal(root)
  vals = []
  return vals unless root
  if root.left != nil
    vals += inorder_traversal(root.left)
  end
  vals << root.val
  if root.right != nil
    vals += inorder_traversal(root.right)
  end
  vals
end
# @lc code=end

