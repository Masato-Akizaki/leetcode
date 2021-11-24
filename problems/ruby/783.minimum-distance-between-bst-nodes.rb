#
# @lc app=leetcode id=783 lang=ruby
#
# [783] Minimum Distance Between BST Nodes
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
def min_diff_in_bst(root)
  return if root.nil?
  @res, @prv_node = nil
  cal(root)
  @res
end

def cal(root)
  return if root.nil?
  cal(root.left)
  if @prv_node
    tmp = root.val - @prv_node.val
    @res = tmp.abs() if @res.nil? || @res > tmp.abs()
  end
  @prv_node = root
  cal(root.right)
end
# @lc code=end

