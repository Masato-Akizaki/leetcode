#
# @lc app=leetcode id=1700 lang=ruby
#
# [1700] Number of Students Unable to Eat Lunch
#

# @lc code=start
# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
    i = 0
    while students.length > 0
        student = students.shift
        if student == sandwiches[0]
            sandwiches.shift
            i = 0
        else
            students.push(student)
            i += 1
        end
        break if i > students.length
    end
    students.length
end
# @lc code=end