#
# @lc app=leetcode id=1114 lang=python3
#
# [1114] Print in Order
#

# @lc code=start
class Foo:
    def __init__(self):
        self.x = 0


    def first(self, printFirst: 'Callable[[], None]') -> None:
        
        # printFirst() outputs "first". Do not change or remove this line.
        printFirst()
        self.x += 1


    def second(self, printSecond: 'Callable[[], None]') -> None:
        while self.x < 1:
            pass
        # printSecond() outputs "second". Do not change or remove this line.
        printSecond()
        self.x += 1


    def third(self, printThird: 'Callable[[], None]') -> None:
        while self.x < 2:
            pass
        # printThird() outputs "third". Do not change or remove this line.
        printThird()
# @lc code=end

