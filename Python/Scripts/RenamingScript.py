import maya.cmds as cmds


class Rename:

    def __init__(self):
        pass

    def RenameOBJs(self, objectName, *args):
        objects = cmds.ls(sl=True, o=True)
        if len(objects) < 1:
            cmds.error('you must select an object')
        numObjs = len(objects)
        numObjsString = "" + str(numObjs)
        strings = objectName.split("#")
        print(strings)
        numNums = (len(objectName) - len(strings[0]) - len(strings[len(strings) - 1]));
        if objectName.startswith("#"):
            prefix = "_"
            suffix = strings[0]
        else:
            prefix = strings[0]
            suffix = strings[len(strings) - 1]
        for i in range(0, len(objects)):
            currentNumString = str(i + 1)
            numberName = ""
            if numNums < len(numObjsString):
                for j in range(0, (len(numObjsString) - len(currentNumString))):
                    numberName += "0"
            else:
                for j in range(0, (numNums - len(currentNumString))):
                    numberName += "0"
            numberName += currentNumString
            fullName = prefix + numberName + suffix
            objects[i] = cmds.rename(objects[i], fullName)

    def CreateWindow(self):
        if cmds.window("renamingWin", exists=True):
            cmds.deleteUI("renamingWin")
        windowName = cmds.window("renamingWin", t="Rename Objects")
        columnName = cmds.columnLayout(p=windowName)
        frameName = cmds.frameLayout(p=columnName, collapsable=False, label='New Name')
        row1 = cmds.rowLayout(p=frameName, numberOfColumns=1)
        TextFieldName = cmds.textField(p=row1)
        row2 = cmds.rowLayout(p=columnName, numberOfColumns=1)

        def ButtonPress(*args):
            NewName = cmds.textField(TextFieldName, query=True, text=True)
            if (len(NewName) > 0):
                self.RenameOBJs(NewName)

        cmds.button(p=row2, label="Rename", command=ButtonPress)
        cmds.showWindow(windowName)


rename = Rename()
rename.CreateWindow()
