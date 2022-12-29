#
# @lc app=leetcode id=82 lang=ruby
#
# [82] Remove Duplicates from Sorted List II
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
def delete_duplicates(head)
  return head if head.nil? || head.next.nil? 
    
  if head.val == head.next.val
      
      pointer = head.next
      
      while !pointer.nil?
          if pointer.val != head.val
              break
          end
          pointer = pointer.next
      end
      
      return delete_duplicates(pointer)
  else
      head.next = delete_duplicates(head.next)
      return head
  end
end
# @lc code=end

