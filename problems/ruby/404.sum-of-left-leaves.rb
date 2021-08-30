#
# @lc app=leetcode id=404 lang=ruby
#
# [404] Sum of Left Leaves
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
def sum_of_left_leaves(root)
  return 0 if root.nil?
  sum = 0
  sum += root.left.val if root.left && root.left.left.nil? && root.left.right.nil?
  sum += sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
  sum
end
# @lc code=end

