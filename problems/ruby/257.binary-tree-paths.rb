#
# @lc app=leetcode id=257 lang=ruby
#
# [257] Binary Tree Paths
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
# @return {String[]}
def binary_tree_paths(root)
  paths = []
  return paths << root.val.to_s if root.left.nil? and root.right.nil?
  if root.left
    binary_tree_paths(root.left).each do |path|
      paths << "#{root.val.to_s}->#{path}"
    end
  end
  if root.right
    binary_tree_paths(root.right).each do |path|
      paths << "#{root.val.to_s}->#{path}"
    end
  end
  paths
end
# @lc code=end

