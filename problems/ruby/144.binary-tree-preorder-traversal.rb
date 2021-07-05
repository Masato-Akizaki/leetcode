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
  return [] unless root
  stack = [root]
  res = []
  until stack.empty?
    curr_tree = stack.pop
    res << curr_tree.val
    stack.push(curr_tree.right) if curr_tree.right
    stack.push(curr_tree.left) if curr_tree.left
  end
  res
end

# @lc code=end

