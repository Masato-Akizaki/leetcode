#
# @lc app=leetcode id=2437 lang=ruby
#
# [2437] Number of Valid Clock Times
#

# @lc code=start
# @param {String} time
# @return {Integer}
def count_time(time)
    h1, h2, m1, m2 = 1, 1, 1, 1
    h = time.split(":")[0]
    m = time.split(":")[1]
    m1 = 6 if m[0] == '?'
    m2 = 10 if m[1] == '?'
    if h[0] == '?'
        if h[1] != "?" && h[1].to_i >= 4
            h1 = 2
        else
            h1 = 3
        end
    end
    if h[1] == '?'
        if h[0] == '2'
            h2 = 4
        elsif h[0] == '?'
            h2 = 8
        else
            h2 = 10
        end
    end
    h1 * h2 * m1 * m2
end
# @lc code=end