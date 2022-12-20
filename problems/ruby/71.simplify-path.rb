#
# @lc app=leetcode id=71 lang=ruby
#
# [71] Simplify Path
#

# @lc code=start
# @param {String} path
# @return {String}
def simplify_path(path)
  stack = []
  split = path.split('/')
  split.each do |item|
    if item == '..'
      stack.pop()
    elsif item != '' && item != '.'
      stack.push(item)
    end
  end
  '/' + stack.join('/')
end
# @lc code=end

