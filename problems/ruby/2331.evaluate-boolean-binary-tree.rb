#
# @lc app=leetcode id=2331 lang=ruby
#
# [2331] Evaluate Boolean Binary Tree
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
def evaluate_tree(root)
    if root.val == 0
        return false
    elsif root.val == 1
        return true
    elsif root.left && root.val == 2
        evaluate_tree(root.left) || evaluate_tree(root.right) 
    elsif root.left && root.val == 3
        evaluate_tree(root.left) && evaluate_tree(root.right) 
    end
end
# @lc code=end