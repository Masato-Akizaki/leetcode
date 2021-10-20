#
# @lc app=leetcode id=637 lang=ruby
#
# [637] Average of Levels in Binary Tree
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
# @return {Float[]}
def average_of_levels(root)
  @lookup = {}
  traverse(root, 0)
  @lookup.values.map do |arr|
      length = arr.size
      arr.inject(:+) / length
  end
end

def traverse(node, level)
  return unless node
  
  if @lookup[level]
      @lookup[level] << node.val
  else
      @lookup[level] = [node.val.to_f]
  end
  
  traverse(node.left, level + 1)
  traverse(node.right, level + 1)
end
# @lc code=end

