#
# @lc app=leetcode id=1656 lang=ruby
#
# [1656] Design an Ordered Stream
#

# @lc code=start
class OrderedStream
=begin
    :type n: Integer
=end
    def initialize(n)
        @stream = Array.new(n)
            @ptr = 0
    end
    
    
=begin
    :type id_key: Integer
    :type value: String
    :rtype: String[]
=end
    def insert(id_key, value)
        @stream[id_key-1] = value
        x = []
        if @stream[@ptr].nil?
            x = []
        else
            while ! @stream[@ptr].nil?
                x.push(@stream[@ptr])
                @ptr += 1
            end
        end
        return x
    end
end

# Your OrderedStream object will be instantiated and called as such:
# obj = OrderedStream.new(n)
# param_1 = obj.insert(id_key, value)
# @lc code=end