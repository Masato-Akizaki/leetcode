#
# @lc app=leetcode id=925 lang=ruby
#
# [925] Long Pressed Name
#

# @lc code=start
# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  name_arr = name.chars.slice_when{|a,b| a != b }.to_a
  typed_arr = typed.chars.slice_when{|a,b| a != b }.to_a
  return false if name_arr.map(&:uniq) != typed_arr.map(&:uniq)
  name_arr.each_with_index do |c, i|
    return false if name_arr[i].length > typed_arr[i].length
  end
  return true
end
# @lc code=end

