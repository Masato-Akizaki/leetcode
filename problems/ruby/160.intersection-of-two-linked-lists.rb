#
# @lc app=leetcode id=160 lang=ruby
#
# [160] Intersection of Two Linked Lists
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  hash = {}
  linkA = headA
  linkB = headB
  until linkA.nil?
    hash[linkA] = 1
    linkA = linkA.next
  end
  p hash
  until linkB.nil?
    p linkB
    p hash[linkB]
    return linkB if hash[linkB]
    linkB = linkB.next
  end
  return nil
end
# @lc code=end

