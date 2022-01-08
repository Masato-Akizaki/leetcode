#
# @lc app=leetcode id=965 lang=ruby
#
# [965] Univalued Binary Tree
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
def is_unival_tree(root)
  val = root.val
  stack = [root]
  until stack.empty? do
    tree = stack.pop
    return false if tree.val != val
    stack << tree.left if tree.left
    stack << tree.right if tree.right
  end
  return true
end
# @lc code=end

