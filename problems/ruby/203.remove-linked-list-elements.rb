#
# @lc app=leetcode id=203 lang=ruby
#
# [203] Remove Linked List Elements
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
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  curr = ListNode.new()
  curr.next = head
  res = curr
  while curr.next do
    next curr.next = curr.next.next if curr.next.val == val
    curr = curr.next
  end
  return res.next
end
# @lc code=end

