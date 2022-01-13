#
# @lc app=leetcode id=993 lang=ruby
#
# [993] Cousins in Binary Tree
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
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  x_node, y_node = [nil, 0, nil], [nil, 0, nil]
  q = Queue.new    
  q << [root, 0, nil]
  
  while !q.empty?
      u_node = q.pop
      u = u_node[0]
      if u.val == x 
          x_node = u_node
      elsif u.val == y
          y_node = u_node
      end

      if !x_node[0].nil? && !y_node[0].nil?
          return x_node[1] == y_node[1] && x_node[2] != y_node[2]
      end
      
      [u.left, u.right].compact.each do |v|
          v_node = [v, u_node[1] + 1, u]
          q << v_node
      end
  end
  false
end
# @lc code=end

