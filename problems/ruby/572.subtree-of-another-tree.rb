#
# @lc app=leetcode id=572 lang=ruby
#
# [572] Subtree of Another Tree
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
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  return true if root.nil? && sub_root.nil?
  return false if root.nil? || sub_root.nil?

  if is_equal(root, sub_root) || is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)
    return true
  else
    return false
  end
end

def is_equal(root, sub_root)
  return true if root.nil? && sub_root.nil?
  return false if root.nil? || sub_root.nil?

  if root.val == sub_root.val && is_equal(root.left, sub_root.left) && is_equal(root.right, sub_root.right)
    return true
  else
    return false
  end
end
# @lc code=end

