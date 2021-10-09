#
# @lc app=leetcode id=590 lang=ruby
#
# [590] N-ary Tree Postorder Traversal
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
def postorder(root)
  return [] unless root
  stack = [root]
  res = []
  until stack.empty?
    node = stack.pop
    res.unshift(node.val)
    node.children.each{ |c| stack.push(c) }
  end
  res
end
# @lc code=end

