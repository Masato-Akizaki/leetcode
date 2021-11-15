#
# @lc app=leetcode id=733 lang=ruby
#
# [733] Flood Fill
#

# @lc code=start
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  pixels = [[sr,sc]]
  change_pixels = [[sr,sc]]
  target = image[sr][sc]
  m = image[0].length
  n = image.length
  until pixels.empty? do
    curr_pixel = pixels.shift
    curr_sr = curr_pixel[0]
    curr_sc = curr_pixel[1]
    if image[curr_sr][curr_sc] == target
      image[curr_sr][curr_sc] = new_color
      pixels << [curr_sr-1,curr_sc] && change_pixels << [curr_sr-1,curr_sc] if curr_sr > 0 && change_pixels.none?([curr_sr-1,curr_sc])
      pixels << [curr_sr,curr_sc-1] && change_pixels << [curr_sr,curr_sc-1] if curr_sc > 0 && change_pixels.none?([curr_sr,curr_sc-1])
      pixels << [curr_sr,curr_sc+1] && change_pixels << [curr_sr,curr_sc+1] if curr_sc < m - 1 && change_pixels.none?([curr_sr,curr_sc+1])
      pixels << [curr_sr+1,curr_sc] && change_pixels << [curr_sr+1,curr_sc] if curr_sr < n - 1 && change_pixels.none?([curr_sr+1,curr_sc])
    end
  end
  image
end
# @lc code=end

