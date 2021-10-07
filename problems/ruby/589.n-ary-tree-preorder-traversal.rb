#
# @lc app=leetcode id=589 lang=ruby
#
# [589] N-ary Tree Preorder Traversal
#

# @lc code=start
# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  return [] unless root
  stack = [root]
  res = []
  until stack.empty?
    curr_tree = stack.pop
    res << curr_tree.val
    curr_tree.children.reverse.each { |n| stack.push(n) }
  end
  res
end
# @lc code=end

