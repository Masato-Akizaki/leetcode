#
# @lc app=leetcode id=111 lang=ruby
#
# [111] Minimum Depth of Binary Tree
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
def min_depth(root)
  return 0 unless root
  left = min_depth(root.left)
  right = min_depth(root.right)
  return [left, right].max + 1 if left.zero? || right.zero?
  [left, right].min + 1
end
# @lc code=end

