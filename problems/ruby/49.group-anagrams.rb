#
# @lc app=leetcode id=49 lang=ruby
#
# [49] Group Anagrams
#

# @lc code=start
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hash = Hash.new()
  strs.each do |str|
      if hash[str.chars.sort.join]
          hash[str.chars.sort.join] << str
      else
          hash[str.chars.sort.join] = [str]
      end
  end
  hash.values
end
# @lc code=end

