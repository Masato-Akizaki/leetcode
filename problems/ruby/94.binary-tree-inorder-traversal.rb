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
  res = []
  current = root
  pre = TreeNode.new(nil)
  while current != nil
    if current.left == nil
      res << current.val
      current = current.right
    else
      pre = current.left
      while pre.right != nil
        pre = pre.right
      end
      pre.right = current
      temp = current
      current = current.left
      temp.left = nil
    end
  end
  res
end
# @lc code=end

