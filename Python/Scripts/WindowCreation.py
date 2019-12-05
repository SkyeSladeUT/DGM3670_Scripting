class WindowCreation():
    import maya.cmds as cmds

    def __init__(self):
        self.window_name = "Toolbox"

    def create(self):
        pass

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)
