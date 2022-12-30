#
# @lc app=leetcode id=86 lang=ruby
#
# [86] Partition List
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
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    l1stack = Array.new
    l2stack = Array.new
    l1ptr = l2ptr = 0
    ptr = head
    while ptr != nil
        if ptr.val >= x
            l2stack[l2ptr]=ptr
            l2ptr+=1
        else
            l1stack[l1ptr]=ptr
            l1ptr+=1
        end
        ptr = ptr.next
    end
    return head if l1ptr==0 or l2ptr==0 
    for i in 0...l1ptr
        l1stack[i].next = l1stack[i+1]
    end
    for i in 0...l2ptr
        l2stack[i].next = l2stack[i+1]
    end
    l1stack[-1].next = l2stack[0]
    l2stack[-1].next = nil
    return l1stack[0]
end
# @lc code=end

