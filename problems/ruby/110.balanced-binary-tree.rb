#
# @lc app=leetcode id=110 lang=ruby
#
# [110] Balanced Binary Tree
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
# @return {Boolean}
def is_balanced(root)
  return true unless root
  (height(root.left) - height(root.right)).abs < 2 && is_balanced(root.left) && is_balanced(root.right)
end

def height(root)
  return 0 if root.nil?
  [height(root.left), height(root.right)].max + 1
end
# @lc code=end

