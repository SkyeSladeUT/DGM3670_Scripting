import maya.cmds as cmds

GetAllField, GetIndivField, GetRotField = ""
def GetCenters(CenterofAll, CenterofInd, OrientationOn):
    objects = cmds.ls(sl=True)
    if not len(objects):
        cmds.error('must select an object')
    xPos, yPos, zPos, xTotal, yTotal, zTotal, xRot, yRot, zRot, numOfObjects = 0
    if CenterofInd:
        CenterIndGroup = cmds.group(empty=True, name='Individual_Locators')
    for i in range(0,len(objects),1):
        words = objects[i].split('[')
        ObjectName = words[0]
        words = objects[i].split(':')
        if(len(words) > 1):
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
                xPos = (bounding[0] + bounding[3])/2
                yPos = (bounding[1] + bounding[4])/2
                zPos = (bounding[2] + bounding[5])/2
                xTotal += xPos
                yTotal += yPos
                zTotal += zPos
                numOfObjects += 1
                if CenterofInd:
                    locatorName = cmds.spaceLocator()
                    cmds.move(xPos, yPos, zPos,locatorName[0], worldSpace=True)
                    if OrientationOn:
                        cmds.rotate(rotation[0], rotation[1], rotation[2], locatorName[0], cp=True)
                    cmds.parent(locatorName, CenterIndGroup)
        else:
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
    if CenterofAll:
        locatorName = cmds.spaceLocator()
        xTotal = xTotal/numOfObjects
        yTotal = yTotal/numOfObjects
        zTotal = zTotal/numOfObjects
        cmds.move(xTotal, yTotal, zTotal, locatorName[0], worldSpace=True)
        if OrientationOn:
            cmds.rotate(xRot, yRot, zRot, locatorName[0], cp=True)

def CallFunc():
    GetAll = cmds.intField(GetAllField, query=True, value=True)
    GetIndiv = cmds.intField(GetIndivField, query=True, value=True)
    GetRot = cmds.intField(GetRotField, query=True, value=True)
    GetCenters(GetAll, GetIndiv, GetRot)



