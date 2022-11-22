#
# @lc app=leetcode id=24 lang=ruby
#
# [24] Swap Nodes in Pairs
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  lists1 = []
  lists2 = []
  tmp_head = head
  list_node = ListNode.new(nil)
  tmp_list_node = list_node
  while tmp_head
    lists1 << tmp_head
    tmp_head = tmp_head.next
  end
  lists1.each_slice(2){|a| lists2 << a.reverse}
  lists2.flatten.each do |list|
    tmp_list_node.next = ListNode.new(list.val)
    tmp_list_node = tmp_list_node.next
  end
  list_node.next
end
# @lc code=end

