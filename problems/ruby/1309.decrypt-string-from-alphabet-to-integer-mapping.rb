#
# @lc app=leetcode id=1309 lang=ruby
#
# [1309] Decrypt String from Alphabet to Integer Mapping
#

# @lc code=start
# @param {String} s
# @return {String}
def freq_alphabets(s)
    [*'a'..'z'].reverse.each_with_index do |c, i|
        int = (26 - i).to_s
        int += '#' if (26 - i) >= 10
        s.gsub!(/#{int}/, c) if s.include?(int)
    end
    return s
end
# @lc code=end