#
# @lc app=leetcode id=101 lang=ruby
#
# [101] Symmetric Tree
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
def is_symmetric(root)
  is_mirror(root, root)
end

def is_mirror(l, r)
  return true if l.nil? && r.nil?
  return false if l.nil? ||  r.nil?
  return l.val == r.val && is_mirror(l.left, r.right) && is_mirror(l.right, r.left)
end
# @lc code=end

