#
# @lc app=leetcode id=1290 lang=ruby
#
# [1290] Convert Binary Number in a Linked List to Integer
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
# @return {Integer}
def get_decimal_value(head)
    binary = ''
    while head do
        binary += head.val.to_s
        head = head.next
    end
    binary.to_i(2)
end
# @lc code=end