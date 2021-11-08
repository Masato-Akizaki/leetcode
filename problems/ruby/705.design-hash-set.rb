#
# @lc app=leetcode id=705 lang=ruby
#
# [705] Design HashSet
#

# @lc code=start
class MyHashSet
    def initialize()
        @MyHashSet = []
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def add(key)
        @MyHashSet.push(key)
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        @MyHashSet.delete(key)
    end


=begin
    :type key: Integer
    :rtype: Boolean
=end
    def contains(key)
        return @MyHashSet.include?(key)
    end


end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
# @lc code=end

