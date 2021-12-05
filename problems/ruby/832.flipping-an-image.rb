#
# @lc app=leetcode id=832 lang=ruby
#
# [832] Flipping an Image
#

# @lc code=start
# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  image.each do |h|
    h.reverse!.map!{|x| 1 - x}
  end
  return image
end
# @lc code=end

