#
# @lc app=leetcode id=653 lang=ruby
#
# [653] Two Sum IV - Input is a BST
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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  @other_nums = []
  @find_target = false
  find_target_helper(root, k)
end

def find_target_helper(root, k)
  return @find_target = true if @other_nums.include?(root.val)
  return @find_target if @find_target
  @other_nums << k - root.val
  find_target_helper(root.left, k)  if root.left
  find_target_helper(root.right, k) if root.right
  @find_target
end
# @lc code=end

