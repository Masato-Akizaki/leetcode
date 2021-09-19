#
# @lc app=leetcode id=501 lang=ruby
#
# [501] Find Mode in Binary Search Tree
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
# @return {Integer[]}
def find_mode(root)
  hash = Hash.new(0)
  stack = []
  
  stack.push(root)

  until stack.empty? do
    node = stack.pop
    hash[node.val] += 1
    stack.push(node.left) if node.left
    stack.push(node.right) if node.right
    hash
  end

  max = hash.values.max
  hash.select {|k, v| v == max}.keys
end
# @lc code=end

