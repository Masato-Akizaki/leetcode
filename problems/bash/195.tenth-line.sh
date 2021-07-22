#
# @lc app=leetcode id=195 lang=bash
#
# [195] Tenth Line
#

# @lc code=start
# Read from the file file.txt and output the tenth line to stdout.
cat file.txt | awk "NR==10 {print}" 
# sed -n 10p file.txt

# @lc code=end

