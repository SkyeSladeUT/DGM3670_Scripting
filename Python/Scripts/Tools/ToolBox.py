import maya.cmds as cmds
class Toolbox():

    def __init__(self):
        self.window_name = "CreateLocators"

    def create(self):
        self.delete()
        self.window_name = cmds.window(self.window_name)
        self.m_column = cmds.columnLayout(p=self.window_name, adj=True)
        self.renameTool = cmds.button(p=self.m_column, label="Rename", command= lambda *args: self.RenameButn())
        self.randomTool = cmds.button(p=self.m_column, label="Random Generation", command= lambda *args: self.RandomGen())
        self.centeringTool = cmds.button(p=self.m_column, label="Create Locators", command= lambda *args: self.Center())
        self.controlPlacement = cmds.button(p=self.m_column, label="Create Controls", command= lambda *args: self.Controls())
        self.snowGenerator = cmds.button(p=self.m_column, label="Create Snowflakes", command=lambda *args: self.SnowFlake())
        cmds.showWindow(self.window_name)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)

    def RenameButn(self):
        import RenamingScript
        reload(RenamingScript)
        rename = RenamingScript.Rename()
        rename.create()

    def RandomGen(self):
        import RandomGeneration
        reload(RandomGeneration)
        rand = RandomGeneration.RandomPlacement()
        rand.create()

    def Center(self):
        import CenteringScript
        reload(CenteringScript)
        center = CenteringScript.CenterObjects()
        center.create()

    def Controls(self):
        import ControlPlacement
        reload(ControlPlacement)
        control = ControlPlacement.ControlCreator()
        control.create()

    def SnowFlake(self):
        import Macro_Script_03_Python
        reload(Macro_Script_03_Python)
        snow = Macro_Script_03_Python.Snowflake()
        snow.create()


#tb = Toolbox()
#tb.create("Toolbox")