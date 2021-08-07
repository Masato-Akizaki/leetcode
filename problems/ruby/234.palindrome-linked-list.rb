#
# @lc app=leetcode id=234 lang=ruby
#
# [234] Palindrome Linked List
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
# @return {Boolean}
def is_palindrome(head)
  numbers = []
  while head
    numbers << head.val
    head = head.next
  end
  numbers == numbers.reverse
end
# @lc code=end

