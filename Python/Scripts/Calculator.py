import maya.cmds as cmds

class Calculator:

    def __init__(self):
        print('initialize')

    def Add(self, nums):
        total = 0
        for n in nums:
            total += n
        return total

    def Subtract(self, nums):
        total = nums[0]
        for n in range(1, len(nums), 1):
            total -= nums[n]
        return total

    def Multiply(self, nums):
        total = 1
        for n in nums:
            total *= n
        return total

    def Divide(self, nums):
        total = nums[0]
        for n in range(1, len(nums), 1):
            total /= n
        return total

    def Mean(self, nums):
        return (self.Add(nums)/len(nums))

    def Median(self, nums):
        nums.sort()
        if len(nums)%2 == 0:
            medianIndex1 = len(nums)/2
            medianIndex2 = medianIndex1-1
            return ((nums[medianIndex1] + nums[medianIndex2])/2)
        else:
            return (nums[(len(nums)/2)])

    def Mode(self, nums):
        nums.sort()
        maxNum = 0
        currTotal = 0
        currNum = nums[0]
        for i in range(0,len(nums, 1)):
            if nums[i] == currNum:
                currTotal += 1
            else:
                if currTotal > maxNum:
                    maxNum = currTotal
                    modes = [currNum]
                elif currTotal == maxNum:
                    modes[len(modes)] = currNum
                currNum = nums[i]
                currTotal = 1
        if currTotal > maxNum:
            maxNum = currTotal
            modes = [currNum]
        elif currTotal == maxNum:
            modes[len(modes)] = currNum
        return modes

    def PowerRec(self, x, n)
        if n == 0:
            return 1
        else:
            return x * self.PowerRec(x,  n-1)

    def Power(self, nums):
        if len(nums) != 2:
            cmds.error('Power function can only have two values (base, exponent)')
        return self.PowerRec(nums[0], nums[1])

    def FactorialRec(self, n):
        if n == 1:
            return 1
        else:
            return n * self.FactorialRec(n-1)

    def Factorial(self, nums):
        if len(nums) != 1:
            cmds.error('Factorial function can only take 1 number')
        return self.FactorialRec(nums[0])


calc = Calculator()
calc.Add([1,2,3])

