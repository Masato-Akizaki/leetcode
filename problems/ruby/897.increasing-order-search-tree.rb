#
# @lc app=leetcode id=897 lang=ruby
#
# [897] Increasing Order Search Tree
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
# @return {TreeNode}
def increasing_bst(root)
  result = nil
  prev = nil
  stack = []
  while root || !stack.empty?
      while root
          stack.push(root)
          root = root&.left
      end
       
      root = stack.pop
      if result.nil?
         result = TreeNode.new(root.val)
         prev = result
      else
          prev.right = TreeNode.new(root.val)
          prev = prev.right
      end
      root = root.right
  end
  result
end
# @lc code=end

