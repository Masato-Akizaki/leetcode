#
# @lc app=leetcode id=206 lang=ruby
#
# [206] Reverse Linked List
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
def reverse_list(head)
  array = []
  while head
    array << head
    head = head.next
  end
  array.reverse!
  res = ListNode.new(0)
  curr = res
  array.each do |l|
    l.next = nil
    curr.next = l
    curr = curr.next
  end
  res.next
end

# def reverse_list(head)
#   prev = nil
#   curr = head
#   while curr
#     temp = curr.next
#     curr.next = prev
#     prev = curr
#     curr = temp
#   end
#   prev
# end
# @lc code=end

