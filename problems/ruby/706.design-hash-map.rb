#
# @lc app=leetcode id=706 lang=ruby
#
# [706] Design HashMap
#

# @lc code=start
class MyHashMap
    def initialize()
        @keys = []
        @values = []
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        index = @keys.index(key)
        if index
            @values[index] = value
        else
            @keys << key
            @values << value
        end
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        index = @keys.index(key)
        return -1 unless index
        @values[index]
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        index = @keys.index(key)
        return unless index
        @keys.delete_at(index)
        @values.delete_at(index)
    end


end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
# @lc code=end

