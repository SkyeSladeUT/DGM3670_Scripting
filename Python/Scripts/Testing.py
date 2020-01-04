import maya.cmds as cmds
import random
from random import randint


class Toolbox():
    def __init__(self):
        self.window_name = "mnToolbox"

    def create(self):
        self.delete()

        self.window_name = cmds.window(self.window_name)
        self.m_column = cmds.columnLayout(parent=self.window_name, adjustableColumn=True, backgroundColor=(.45, .5, .7))
        cmds.button(label="MyButton",
                    command=lambda *args: cmds.polySphere(radius=2))
        cmds.button(label="Yellow",
                    command=lambda *args: self.colorControl('yellow'))
        cmds.button(label="Red",
                    command=lambda *args: self.colorControl('red'))
        self.color = cmds.textField(parent=self.m_column)
        cmds.button(parent=self.m_column,
                    label='Change Color', command=lambda *args: self.colorBtn())
        cmds.button(p=self.m_column, label='Select All The Things', command=lambda *args: self.selectBtn())
        cmds.button(p=self.m_column, label='Create Controller', command=lambda *args: self.createControl())
        cmds.button(p=self.m_column, label='Re-name Tool', command=lambda *args: self.RenameTool("Leg", "Jnt"))
        ObjAmount= self.random = cmds.intField(label='Object Amount',parent=self.m_column)
        MinAmount= self.random = cmds.intField(parent=self.m_column)
        MaxAmount= self.random = cmds.intField(parent=self.m_column)
        MinRotate= self.random = cmds.intField(parent=self.m_column)
        MaxRotate= self.random = cmds.intField(parent=self.m_column)
        MinScale= self.random = cmds.intField(parent=self.m_column)
        MaxScale= self.random = cmds.intField(parent=self.m_column)
        #cmds.button(p=self.m_column, label='Random Generator', command=lambda *args: self.randomBtn())
        cmds.button(p=self.m_column, label='Random Generator', command=lambda *args: self.randomGenerator((cmds.intField(ObjAmount, q=True, value=True)),
                                                                                                          (cmds.intField(MinAmount, q= True, value=True)),
                                                                                                           (cmds.intField(MaxAmount, q=True, value=True)),
                                                                                                          (cmds.intField(MinRotate, q=True, value=True)),
                                                                                                           (cmds.intField(MaxRotate, q=True, value= True)),
                                                                                                          (cmds.intField(MinScale, q=True, value=True)),
                                                                                                           (cmds.intField(MaxScale, q=True, value=True))))
        cmds.showWindow(self.window_name)

tb = Toolbox()
tb.create()