#
# @lc app=leetcode id=617 lang=ruby
#
# [617] Merge Two Binary Trees
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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  return nil if root1.nil? && root2.nil?
  return root2 if root1.nil?
  return root1 if root2.nil?

  result = TreeNode.new(0)
  result.val = root1.val + root2.val
  result.left = merge_trees(root1.left, root2.left)
  result.right = merge_trees(root1.right, root2.right)
  result
end
# @lc code=end

