import maya.cmds as cmds
import math


class Calculator:

    def __init__(self):
        self.window_name = "Toolbox"

    def create(self):
        self.delete()
        self.window_name = cmds.window(self.window_name, title="Calculator")
        self.column = cmds.columnLayout(p=self.window_name, adj = True)
        cmds.text(p=self.column, label="Enter numbers seperated by a single space")
        self.numbers = cmds.textField(p=self.column, text="")
        cmds.button(p=self.column, label="Add", command=lambda *args: self.RunCalc('add', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Subtract", command=lambda *args: self.RunCalc('subtract', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Multiply", command=lambda *args: self.RunCalc('multiply', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Divide", command=lambda *args: self.RunCalc('divide', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Mean", command=lambda *args: self.RunCalc('mean', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Median", command=lambda *args: self.RunCalc('median', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Mode", command=lambda *args: self.RunCalc('mode', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Power", command=lambda *args: self.RunCalc('power', cmds.textField(self.numbers, query=True, text=True)))
        cmds.button(p=self.column, label="Factorial", command=lambda *args: self.RunCalc('factorial', cmds.textField(self.numbers, query=True, text=True)))
        self.result = cmds.text(p=self.column, label="")
        cmds.showWindow(self.window_name)


    def RunCalc(self, function, numstring):
        numbers = numstring.split(" ")
        print numbers
        numberlist = list()
        for num in numbers:
            print num
            if num.isnumeric():
                numberlist.append(float(num))
        if function is "add":
            self.Add(numberlist)
        elif function is "subtract":
            self.Subtract(numberlist)
        elif function is "multiply":
            self.Multiply(numberlist)
        elif function is "divide":
            self.Divide(numberlist)
        elif function is "mean":
            self.Mean(numberlist)
        elif function is "median":
            self.Median(numberlist)
        elif function is "mode":
            self.Mode(numberlist)
        elif function is "power":
            self.Power(numberlist)
        elif function is "factorial":
            self.Factorial(numberlist)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)

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
            cmds.text(self.result, edit=True, label="The sum of " + self.createListString(nums) + " is " + str(total))
            print("The sum of " + self.createListString(nums) + " is " + str(total))
        return total

    def Subtract(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total -= n
        cmds.text(self.result, edit=True, label="The difference of " + self.createListString(nums) + " is " + str(total))
        print("The difference of " + self.createListString(nums) + " is " + str(total))
        return total

    def Multiply(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total *= n
        cmds.text(self.result, edit=True, label="The product of " + self.createListString(nums) + " is " + str(total))
        print("The product of " + self.createListString(nums) + " is " + str(total))
        return total

    def Divide(self, nums):
        total = nums[0]
        for n in nums[1:]:
            total /= n
        cmds.text(self.result, edit=True, label="The dividend of " + self.createListString(nums) + " is " + str(total))
        print("The dividend of " + self.createListString(nums) + " is " + str(total))
        return total

    def Mean(self, nums):
        result = (self.Add(nums, False) / float(len(nums)))
        cmds.text(self.result, edit=True, label="The Mean of " + self.createListString(nums) + " is " + str(result))
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
        cmds.text(self.result, edit=True, label="The Median of " + self.createListString(nums) + " is " + str(result))
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
        cmds.text(self.result, edit=True, label="The Mode(s) of " + self.createListString(nums) + " is/are " + self.createListString(modes))
        print("The Mode(s) of " + self.createListString(nums) + " is/are " + self.createListString(modes))
        return modes

    def Power(self, nums):
        if len(nums) != 2:
            cmds.error('Power function can only have two values (base, exponent)')
        result = math.pow(nums[0], nums[1])
        cmds.text(self.result, edit=True, label=str(nums[0]) + " to the power of " + str(nums[1]) + " is " + str(result))
        print(str(nums[0]) + " to the power of " + str(nums[1]) + " is " + str(result))
        return result

    def Factorial(self, nums):
        if len(nums) != 1:
            cmds.error('Factorial function can only take 1 number')
        result = math.factorial(nums[0])
        cmds.text(self.result, edit=True, label="The factorial of " + str(nums[0]) + " is " + str(result))
        print("The factorial of " + str(nums[0]) + " is " + str(result))
        return result

#calc = Calculator()
#calc.create()