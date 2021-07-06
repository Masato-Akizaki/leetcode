#
# @lc app=leetcode id=145 lang=ruby
#
# [145] Binary Tree Postorder Traversal
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
def postorder_traversal(root)
  return [] unless root
  res = []
  stack = [root]
  until stack.empty?
    node = stack.pop
    res.unshift(node.val)
    stack.push(node.left) if node.left
    stack.push(node.right) if node.right
  end
  res
end
# @lc code=end

