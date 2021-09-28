#
# @lc app=leetcode id=543 lang=ruby
#
# [543] Diameter of Binary Tree
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
# @return {Integer}
def diameter_of_binary_tree(root)
  @ans = 0
  left_depth = root.left ? depth_of_tree(root.left) + 1 : 0
  right_depth = root.right ? depth_of_tree(root.right) + 1 : 0
  @ans = [left_depth + right_depth, @ans].max
end

def depth_of_tree(root)
  return 0 if root.left.nil? && root.right.nil?
  left_depth = root.left ? depth_of_tree(root.left) + 1 : 0
  right_depth = root.right ? depth_of_tree(root.right) + 1 : 0
  @ans = [left_depth + right_depth, @ans].max
  [left_depth, right_depth].max
end
# @lc code=end

