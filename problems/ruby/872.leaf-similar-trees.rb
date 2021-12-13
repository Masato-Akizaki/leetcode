#
# @lc app=leetcode id=872 lang=ruby
#
# [872] Leaf-Similar Trees
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
# @return {Boolean}
def leaf_similar(root1, root2)
  leaf_value(root1) == leaf_value(root2)
end

def leaf_value(root)
  return [root.val] if root.left.nil? && root.right.nil?
  value = []
  value += leaf_value(root.left) if root.left
  value += leaf_value(root.right) if root.right
  return value
end
# @lc code=end

