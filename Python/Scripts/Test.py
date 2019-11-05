import maya.cmds as cmds

def createSphereFunction():
    sphere = cmds.polySphere(radius=2, axis=[1, 2, 3], name='sphere')
    print(sphere)

createSphereFunction()

cube = cmds.polyCube(height = 2, width = 4, depth = 10, name = "cube")
cmds.xform('ball', ws=True, tranlation=[5,8,10])