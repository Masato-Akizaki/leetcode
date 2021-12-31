#
# @lc app=leetcode id=933 lang=ruby
#
# [933] Number of Recent Calls
#

# @lc code=start
class RecentCounter
    def initialize()
        @requests = []
    end


=begin
    :type t: Integer
    :rtype: Integer
=end
    def ping(t)
        @requests << t
        count = 0
        @requests.each do |x, i|
            if x < t - 3000
                count += 1
            else
                break
            end
        end
        @requests.slice!(0, count)
        return @requests.length
    end


end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)
# @lc code=end

