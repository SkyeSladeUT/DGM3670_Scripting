import maya.cmds as cmds
import math


class Calculator:

    def createListString (self, nums):
        ListString = "[" + str(nums[0])
        for n in nums[1:]:
            ListString += ", " + str(n)
        ListString += "]"
        return ListString

    def Add(self, nums, printEquation=True):
        total = nums[0]
        for n in nums[1:]:
            total += n
        if printEquation:
            print("The sum of " + self.createListString(nums) + " is " + str(total))
        return total

    def Subtract(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total -= n
        print("The difference of " + self.createListString(nums) + " is " + str(total))
        return total

    def Multiply(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total *= n
        print("The product of " + self.createListString(nums) + " is " + str(total))
        return total

    def Divide(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total *= n
        print("The dividend of " + self.createListString(nums) + " is " + str(total))
        return total

    def Mean(self, nums):
        result = (self.Add(nums, False) / float(len(nums)))
        print("The Mean of " + self.createListString(nums) + " is " + str(result))
        return result

    def Median(self, nums):
        nums.sort()
        if len(nums) % 2 == 0:
            medianIndex1 = len(nums) / 2
            medianIndex2 = medianIndex1 - 1
            result = ((nums[medianIndex1] + nums[medianIndex2]) / 2.0)
        else:
            medianIndex1 = len(nums) / 2
            result = (nums[(len(nums) / 2)])
        print("The Median of " + self.createListString(nums) + " is " + str(result))
        return result

    def Mode(self, nums):
        nums.sort()
        maxNum = 0
        currTotal = 0
        currNum = nums[0]
        for i in range(0, len(nums)):
            if nums[i] == currNum:
                currTotal += 1
            else:
                if currTotal > maxNum:
                    maxNum = currTotal
                    modes = [currNum]
                elif currTotal == maxNum:
                    modes.append(currNum)
                currNum = nums[i]
                currTotal = 1
        if currTotal > maxNum:
            maxNum = currTotal
            modes = [currNum]
        elif currTotal == maxNum:
            modes.append(currNum)
        print("The Mode(s) of " + self.createListString(nums) + " is/are " + self.createListString(modes))
        return modes

    def Power(self, nums):
        if len(nums) != 2:
            cmds.error('Power function can only have two values (base, exponent)')
        result = math.pow(nums[0], nums[1])
        print(str(nums[0]) + " to the power of " + str(nums[1]) + " is " + str(result))
        return result

    def Factorial(self, nums):
        if len(nums) != 1:
            cmds.error('Factorial function can only take 1 number')
        result = math.factorial(nums[0])
        print("The factorial of " + str(nums[0]) + " is " + str(result))
        return result


calc = Calculator()
calc.Add([1,2,3])
calc.Subtract([25,5,14])
calc.Multiply([2,4,3])
calc.Divide([25,5,2])
calc.Mean([5,4,2,6,2])
calc.Mode([1,3,4,4,5,3,5,5,4])
calc.Median([1,6,4,3,5,2,1])
calc.Power([3,2])
calc.Factorial([5])