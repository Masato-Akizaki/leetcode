#
# @lc app=leetcode id=2236 lang=ruby
#
# [2236] Root Equals Sum of Children
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
def check_tree(root)
    root.val == root.left.val + root.right.val
end
# @lc code=end