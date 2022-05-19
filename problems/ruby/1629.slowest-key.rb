#
# @lc app=leetcode id=1629 lang=ruby
#
# [1629] Slowest Key
#

# @lc code=start
# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
    hash = Hash.new(0)
    release_times.each_with_index do |t, i|
        if i == 0
            hash[keys_pressed[i]] = t
        else
            if hash[keys_pressed[i]]
                hash[keys_pressed[i]] = [hash[keys_pressed[i]], (t - release_times[i-1])].max
            else
                hash[keys_pressed[i]] = t - release_times[i-1]
            end
        end
    end
    max = hash.max{ |x,y| x[1] <=> y[1] }[1]
    hash.select{|k,v| v == max}.keys.sort[-1]
end
# @lc code=end