#
# @lc app=leetcode id=671 lang=ruby
#
# [671] Second Minimum Node In a Binary Tree
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
def find_second_minimum_value(root)
  fisrt_and_second_vals = find_second_minimum_value_helper(root)
  return -1 if fisrt_and_second_vals.uniq.length == 1
  return fisrt_and_second_vals[1]
end

def find_second_minimum_value_helper(root)
  return [root.val] if root.left.nil? && root.right.nil?
  (find_second_minimum_value_helper(root.left) + find_second_minimum_value_helper(root.right)).uniq.sort.first(2)
end
# @lc code=end

