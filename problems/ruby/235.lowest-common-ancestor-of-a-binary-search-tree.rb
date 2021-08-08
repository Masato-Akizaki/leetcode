#
# @lc app=leetcode id=235 lang=ruby
#
# [235] Lowest Common Ancestor of a Binary Search Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return root if root == p || root == q
  left = lowest_common_ancestor(root.left, p, q) unless root.left.nil?
  right = lowest_common_ancestor(root.right, p, q) unless root.right.nil?
  return right if left.nil?
  return left if right.nil?
  root
end
# @lc code=end

