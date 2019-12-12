import maya.cmds as cmds
class colorChanger():

    def __init__(self):
        self.window_name = "ControlCreator"

    def changeColor(self, color):
        sels = cmds.ls(sl=True)
        for sel in sels:
            children = cmds.listRelatives(sel, children=True, shapes=True)
            for child in children:
                cmds.setAttr('%s.overrideEnabled' % (child), True)
                if type(color) is int:
                    cmds.setAttr('%s.overrideColor' % (child), color)

    def create(self):
        self.delete()
        self.window_name = cmds.window(self.window_name, t="Color Changer")
        self.column = cmds.columnLayout(p = self.window_name)
        self.color = cmds.colorIndexSliderGrp(label="Select Color", min=1, max=32)
        self.controlBtn = cmds.button(p=self.column, label = "Change Color", command = lambda *args: self.changeColor((cmds.colorIndexSliderGrp(self.color, query=True, value=True))-1))
        cmds.showWindow(self.window_name)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)


#cc = colorChanger()
#cc.create()
