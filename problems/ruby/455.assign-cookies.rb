#
# @lc app=leetcode id=455 lang=ruby
#
# [455] Assign Cookies
#

# @lc code=start
# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  i = 0
  j = 0
  g.sort!
  s.sort!
  content_children_count = 0
  while g[i] && s[j]
    if s[j] >= g[i]
      content_children_count += 1
      i += 1
      j += 1
    else
      j += 1
    end
  end
  content_children_count
end
# @lc code=end

