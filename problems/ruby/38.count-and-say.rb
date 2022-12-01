#
# @lc app=leetcode id=38 lang=ruby
#
# [38] Count and Say
#

# @lc code=start
# @param {Integer} n
# @return {String}
def count_and_say(n)
  term = "1"
  return term if n == 1
  (n-1).times {
      term = find_term(term)    
  }
  term
end

def find_term(str)
  curr_char = str[0]
  curr_char_count = 0
  term = ""
  str.chars.each { |c|
     if c == curr_char
         curr_char_count += 1
     else
         term += "#{curr_char_count}#{curr_char}"
         curr_char = c
         curr_char_count = 1
     end
  }
  term += "#{curr_char_count}#{curr_char}"
  term
end
# @lc code=end

