#
# @lc app=leetcode id=1576 lang=ruby
#
# [1576] Replace All ?'s to Avoid Consecutive Repeating Characters
#

# @lc code=start
# @param {String} s
# @return {String}
def modify_string(s)
    [*0...s.length].each do |i|
        if s[i] == "?"
            letters = [*'a'..'z']
            letters -= [s[i-1], s[i+1]]
            s[i] = letters.first
        end
    end
    s
end
# @lc code=end