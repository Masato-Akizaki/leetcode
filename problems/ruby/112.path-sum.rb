#
# @lc app=leetcode id=112 lang=ruby
#
# [112] Path Sum
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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  return false unless root
  sum_path(root).include?(target_sum)
end

def sum_path(root)
  return [root.val] if root.left.nil? && root.right.nil?
  return sum_path(root.left).map{ |x| x + root.val} if root.right.nil?
  return sum_path(root.right).map{ |x| x + root.val} if root.left.nil?
  (sum_path(root.left) | sum_path(root.right)).map{ |x| x + root.val}
end
# @lc code=end

