import maya.cmds as cmds
from functools import partial

class CenterObjects:

    def __init__(self):
        pass

    def GetCenters(self, CenterofAll, CenterofInd, OrientationOn):
        objects = cmds.ls(sl=True)
        if not len(objects):
            cmds.error('must select an object')
        xPos = 0
        yPos = 0
        zPos = 0
        xTotal = 0
        yTotal = 0
        zTotal = 0
        xRot = 0
        yRot = 0
        zRot = 0
        numOfObjects = 0
        if CenterofInd:
            CenterIndGroup = cmds.group(empty=True, name='Individual_Locators')
        for i in range(0, len(objects), 1):
            words = objects[i].split('[')
            ObjectName = words[0]
            words = objects[i].split(':')
            if (len(words) > 1):
                numsText = words[0].split('[')
                beginNum = int(numsText[1])
                numsText = words[1].split(']')
                endNum = int(numsText[0])
                for j in range(beginNum, endNum, 1):
                    obj = ObjectName + '[' + j + ']'
                    bounding = cmds.xform(obj, query=True, worldSpace=True, boundingBox=True)
                    rotation = cmds.xform(obj, query=True, worldSpace=True, rotation=True)
                    xRot += rotation[0]
                    yRot += rotation[1]
                    zRot += rotation[2]
                    xPos = (bounding[0] + bounding[3]) / 2
                    yPos = (bounding[1] + bounding[4]) / 2
                    zPos = (bounding[2] + bounding[5]) / 2
                    xTotal += xPos
                    yTotal += yPos
                    zTotal += zPos
                    numOfObjects += 1
                    if CenterofInd:
                        locatorName = cmds.spaceLocator()
                        cmds.move(xPos, yPos, zPos, locatorName[0], worldSpace=True)
                        if OrientationOn:
                            cmds.rotate(rotation[0], rotation[1], rotation[2], locatorName[0], cp=True)
                        cmds.parent(locatorName, CenterIndGroup)
            else:
                bounding = cmds.xform(objects[i], query=True, worldSpace=True, boundingBox=True)
                rotation = cmds.xform(objects[i], query=True, worldSpace=True, rotation=True)
                xRot += rotation[0]
                yRot += rotation[1]
                zRot += rotation[2]
                xPos = (bounding[0] + bounding[3]) / 2
                yPos = (bounding[1] + bounding[4]) / 2
                zPos = (bounding[2] + bounding[5]) / 2
                xTotal += xPos
                yTotal += yPos
                zTotal += zPos
                numOfObjects += 1
                if CenterofInd:
                    locatorName = cmds.spaceLocator()
                    cmds.move(xPos, yPos, zPos, locatorName[0], worldSpace=True)
                    if OrientationOn:
                        cmds.rotate(rotation[0], rotation[1], rotation[2], locatorName[0], cp=True)
                    cmds.parent(locatorName, CenterIndGroup)
        if CenterofAll:
            locatorName = cmds.spaceLocator()
            xTotal = xTotal / numOfObjects
            yTotal = yTotal / numOfObjects
            zTotal = zTotal / numOfObjects
            cmds.move(xTotal, yTotal, zTotal, locatorName[0], worldSpace=True)
            if OrientationOn:
                cmds.rotate(xRot, yRot, zRot, locatorName[0], cp=True)

    def CreateCenteringWindow(self):

        if cmds.window("centeringWin", exists=True):
            cmds.deleteUI("centeringWin")

        windowName = cmds.window("centeringWin", title='Centering Script')
        columnName = cmds.columnLayout(parent=windowName)
        row1Name = cmds.rowLayout(parent=columnName, numberOfColumns=1)
        GetAllField = cmds.checkBox(parent=row1Name, label='Get All Centers')
        row2Name = cmds.rowLayout(parent=columnName, numberOfColumns=1)
        GetIndivField = cmds.checkBox(parent=row2Name, label='Get Individual Centers')
        row3Name = cmds.rowLayout(parent=columnName, numberOfColumns=1)
        GetRotField = cmds.checkBox(parent=row3Name, label='Orient Centers')
        buttonRowName = cmds.rowLayout(parent=columnName, numberOfColumns=1)
        def ButtonPress(*args):
            GetAll = cmds.checkBox(GetAllField, query=True, value=True)
            GetIndiv = cmds.checkBox(GetIndivField, query=True, value=True)
            GetRot = cmds.checkBox(GetRotField, query=True, value=True)
            self.GetCenters(GetAll, GetIndiv, GetRot)
        activateButton = cmds.button(parent=buttonRowName, label='Get Centers',
                                     command=ButtonPress)

        cmds.showWindow(windowName)




centers = CenterObjects()
centers.CreateCenteringWindow()