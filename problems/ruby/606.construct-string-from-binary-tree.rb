#
# @lc app=leetcode id=606 lang=ruby
#
# [606] Construct String from Binary Tree
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
# @return {String}
def tree2str(root)
  return '' if root.nil?
  return "#{root.val}" if root.left.nil? && root.right.nil?
  return "#{root.val}" + "(#{tree2str(root.left)})" if root.right.nil?
  return "#{root.val}" + "(#{tree2str(root.left)})" + "(#{tree2str(root.right)})"
end
# @lc code=end

