import maya.cmds as cmds
class ControlCreator():

    def __init__(self):
        self.window_name = "ControlCreator"

    def createControl(self, color):
        sels = cmds.ls(sl=True)
        if len(sels):
            for sel in sels:
                controlGroupObj = cmds.group(empty=True, name=self.renameCtrlGrp(sel))
                controlObj = cmds.circle(name=self.renameCtrl(sel), nr=(0,1,0))
                self.changeColor(color, controlObj)
                cmds.parent(controlObj, controlGroupObj)
                cmds.matchTransform(controlGroupObj, sel, scale=False)
        else:
            controlGroupObj = cmds.group(empty=True, name='_Ctrl_Grp')
            controlObj = cmds.circle(name="_Ctrl", nr=(0, 1, 0))
            self.changeColor(color, controlObj)
            cmds.parent(controlObj, controlGroupObj)


    def changeColor(self, color, obj):
        children = cmds.listRelatives(obj, children=True, shapes=True)
        for child in children:
            cmds.setAttr('%s.overrideEnabled' % (child), True)
            if type(color) is int:
                cmds.setAttr('%s.overrideColor' % (child), color)

    def renameCtrl(self, objName):
        splitName = objName.split("_")
        if len(splitName) > 1:
            newName = ""
            for i in range(0, len(splitName)-1):
                newName += splitName[i] + "_"
            newName += "Ctrl"
        else:
            newName = objName + "_Ctrl"
        return newName

    def renameCtrlGrp(self, objName):
        splitName = objName.split("_")
        if len(splitName) > 1:
            newName = ""
            for i in range(0, len(splitName)-1):
                newName += splitName[i] + "_"
            newName += "Ctrl_Grp"
        else:
            newName = objName + "_Ctrl_Grp"
        return newName

    def create(self):
        self.delete()
        self.window_name = cmds.window(self.window_name, t="Control Creator")
        self.column = cmds.columnLayout(p = self.window_name)
        self.color = cmds.colorIndexSliderGrp(label="Select Color", min=1, max=32)
        self.controlBtn = cmds.button(p=self.column, label = "Create Controls", command = lambda *args: self.createControl((cmds.colorIndexSliderGrp(self.color, query=True, value=True))-1))
        cmds.showWindow(self.window_name)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)


#cc = ControlCreator()
#cc.create()
