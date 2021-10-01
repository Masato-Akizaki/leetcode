#
# @lc app=leetcode id=559 lang=ruby
#
# [559] Maximum Depth of N-ary Tree
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
# @return {int}
def maxDepth(root)
  return 0 unless root
  return 1 if root.children.empty?
  tmp_depth = []
  root.children.each do |c|
    tmp_depth << maxDepth(c)
  end
  tmp_depth.max + 1
end
# @lc code=end

