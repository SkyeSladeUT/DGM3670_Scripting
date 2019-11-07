import maya.cmds as cmds

def createSphereFunction():
    sphere = cmds.polySphere(radius=2, axis=[1, 2, 3], name='sphere')
    print(sphere)

createSphereFunction()

cube = cmds.polyCube(height = 2, width = 4, depth = 10, name = "cube")
cmds.xform('cube', ws=True, translation=[5,8,10])

#alt s to run selectSed\

'''

 int
 float
 strings
 list []
 sets {} immutable and unordered
 dictionary {ball:[[x,y,z], [children]]} unordered and mutable
 
'''

students = [['Bill', 'Bob', 'Candace', 'Rebecca'], [100,98,67,37], ['Clayton', 'Clayton', 'Clayton', 'Clayton']]
print[0][3]