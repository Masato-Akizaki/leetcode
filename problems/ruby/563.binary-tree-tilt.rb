#
# @lc app=leetcode id=563 lang=ruby
#
# [563] Binary Tree Tilt
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
def find_tilt(root)
  @total_tilt = 0
  sum_value(root)
  return @total_tilt
end

def sum_value(root)
  return 0 if root.nil?
  left_sum = sum_value(root.left)
  right_sum = sum_value(root.right)
  tilt = (left_sum - right_sum).abs
  @total_tilt += tilt
  return left_sum + right_sum + root.val
end

# @lc code=end

