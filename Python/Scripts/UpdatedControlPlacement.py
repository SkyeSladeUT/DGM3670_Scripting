import maya.cmds as cmds


class ControlCreator():
    def __init__(self):
        self.window_name = "ControlCreator"

    def createControl(self, color):
        sels = cmds.ls(sl=True)
        if len(sels):
            allObjs = cmds.select(sels, hierarchy=True)
            sels = cmds.ls(sl=True)
            groupList = []
            controlList = []
            for sel in sels:
                controlGroupObj = cmds.group(empty=True, name=self.renameCtrlGrp(sel))
                groupList.append(controlGroupObj)
                controlObj = cmds.circle(name=self.renameCtrl(sel), nr=(1, 0, 0))
                controlList.append(controlObj)
                self.changeColor(color, controlObj)
                cmds.parent(controlObj, controlGroupObj)
                cmds.matchTransform(controlGroupObj, sel, scale=False)
                self.setHierarchy(sels, controlList, controlGroupObj)
        else:
            controlGroupObj = cmds.group(empty=True, name='_Ctrl_Grp')
            controlObj = cmds.circle(name="_Ctrl", nr=(1, 0, 0))
            self.changeColor(color, controlObj)
            cmds.parent(controlObj, controlGroupObj)

    def changeColor(self, color, obj):
        cmds.setAttr('%s.overrideEnabled' % (obj[0]), True)
        if type(color) is int:
            cmds.setAttr('%s.overrideColor' % (obj[0]), color)

    def renameCtrl(self, objName):
        splitName = objName.split("_")
        if len(splitName) > 1:
            newName = ""
            for i in range(0, len(splitName) - 1):
                newName += splitName[i] + "_"
            newName += "Ctrl"
        else:
            newName = objName + "_Ctrl"
        return newName

    def renameCtrlGrp(self, objName):
        splitName = objName.split("_")
        if len(splitName) > 1:
            newName = ""
            for i in range(0, len(splitName) - 1):
                newName += splitName[i] + "_"
            newName += "Ctrl_Grp"
        else:
            newName = objName + "_Ctrl_Grp"
        return newName

    def create(self):
        self.delete()
        self.window_name = cmds.window(self.window_name, t="Control Creator")
        self.column = cmds.columnLayout(p=self.window_name)
        self.color = cmds.colorIndexSliderGrp(label="Select Color", min=1, max=32)
        self.controlBtn = cmds.button(p=self.column, label="Create Controls", command=lambda *args: self.createControl(
            (cmds.colorIndexSliderGrp(self.color, query=True, value=True)) - 1))
        cmds.showWindow(self.window_name)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)

    def setHierarchy(self, hierarchyList, controlList, obj):
        objName = obj.split("_")[-1]
        parentIndex = -1
        for i in range(len(hierarchyList)):
            hierarchyname = hierarchyList[i].split("_")[-1]
            if objName == hierarchyname:
                parentIndex = i - 1
            break
        if parentIndex > -1:
            cmds.parent(obj, controlList[parentIndex])

    def constrain(self, sels=[]):
        if not sels:
            sels = cmds.ls(sl=True)

        if (len(sels) % 2 == 0):
            controlList = sels[0:((len(sels) / 2))]
            jointList = sels[(len(sels) / 2):len(sels)]
            for i in range(len(controlList)):
                cmds.parentConstraint(controlList[i], jointList[i], mo=True, weight=1)
            cmds.select(ctrls, r=True)
        else:
            cmds.error("select an even number of objects")


cc = ControlCreator()
cc.create()