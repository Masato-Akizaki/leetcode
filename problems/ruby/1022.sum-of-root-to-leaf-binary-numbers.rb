#
# @lc app=leetcode id=1022 lang=ruby
#
# [1022] Sum of Root To Leaf Binary Numbers
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
def sum_root_to_leaf(root)
  @sum = 0
  dfs(root,0) if root
  @sum 
end

def dfs(root, sum)
  sum = sum * 2 + root.val
  dfs(root.left, sum) if root.left
  dfs(root.right, sum) if root.right
  @sum += sum if root.left.nil? && root.right.nil?
end       
# @lc code=end

