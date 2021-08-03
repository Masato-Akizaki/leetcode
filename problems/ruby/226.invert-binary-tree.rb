#
# @lc app=leetcode id=226 lang=ruby
#
# [226] Invert Binary Tree
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
# @return {TreeNode}
def invert_tree(root)
  return nil if root.nil?
  right = invert_tree(root.right)
  left = invert_tree(root.left)
  root.left = right
  root.right = left
  return root
end
# @lc code=end

