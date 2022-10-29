#
# @lc app=leetcode id=2418 lang=ruby
#
# [2418] Sort the People
#

# @lc code=start
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
    [names, heights].transpose.sort_by {|x| x[1]}.reverse.map{|x| x[0]}
end
# @lc code=end