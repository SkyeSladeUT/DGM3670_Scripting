import maya.cmds as cmds
import random

class RandomPlacement:

    def __init__(self):
        self.window_name = "Toolbox"

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)

    def randomPlacement(self, numDuplicates, minT, maxT, minR, maxR, minS, maxS, *args):
        objs = cmds.ls(sl=True)
        if len(objs) < 1:
            cmds.error("must select at least one object\n")
        groupName = cmds.group(em=True)
        groupName = cmds.rename(groupName, 'Duplicated_Objects')
        print(numDuplicates)
        for i in range(0, numDuplicates):
            dupObj = cmds.duplicate(objs)
            duplicatedObjs = list()
            for o in dupObj:
                duplicatedObjs.append(o)
                cmds.move(random.uniform(minT[0], maxT[0]), random.uniform(minT[1], maxT[1]), random.uniform(minT[2], maxT[2]),
                          o, ws=True)
                cmds.rotate(random.uniform(minR[0], maxR[0]),  random.uniform(minR[1], maxR[1]), random.uniform(minS[2], maxS[2]),
                            o, os=True)
                cmds.scale(random.uniform(minS[0], maxS[0]), random.uniform(minS[1], maxS[1]), random.uniform(minS[2], maxS[2]),
                           o, cp=True)
                cmds.parent(o, groupName)
        return duplicatedObjs

    def create(self):
        if cmds.window("randomWin", exists=True):
            cmds.deleteUI("randomWin")
        windowName = cmds.window("randomWin", t='Random Generation')
        columnName = cmds.columnLayout(parent=windowName)
        row1 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row1, label="Number of Duplicates")
        row2 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        NumDuplicates = cmds.intField(p=row2, minValue=1, value=1)
        row3 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row3, label="Minimum Translation")
        row4 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MinTX = cmds.floatField(p=row4, precision=2, step=.01, value=0)
        MinTY = cmds.floatField(p=row4, precision=2, step=.01, value=0)
        MinTZ = cmds.floatField(p=row4, precision=2, step=.01, value=0)
        row5 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row5, label="Maximum Translation")
        row6 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MaxTX = cmds.floatField(p=row6, precision=2, step=.01, value=10)
        MaxTY = cmds.floatField(p=row6, precision=2, step=.01, value=10)
        MaxTZ = cmds.floatField(p=row6, precision=2, step=.01, value=10)
        row7 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row7, label="Minimum Rotation")
        row8 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MinRX = cmds.floatField(p=row8, precision=2, step=.01, value=0)
        MinRY = cmds.floatField(p=row8, precision=2, step=.01, value=0)
        MinRZ = cmds.floatField(p=row8, precision=2, step=.01, value=0)
        row9 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row9, label="Maximum Rotation")
        row10 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MaxRX = cmds.floatField(p=row10, precision=2, step=.01, value=90)
        MaxRY = cmds.floatField(p=row10, precision=2, step=.01, value=90)
        MaxRZ = cmds.floatField(p=row10, precision=2, step=.01, value=90)
        row11 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row11, label="Minimum Scale")
        row12 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MinSX = cmds.floatField(p=row12, precision=2, step=.01, value=.25)
        MinSY = cmds.floatField(p=row12, precision=2, step=.01, value=.25)
        MinSZ = cmds.floatField(p=row12, precision=2, step=.01, value=.25)
        row13 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row13, label="Maximum Scale")
        row14 = cmds.rowLayout(p=columnName, numberOfColumns=3)
        MaxSX = cmds.floatField(p=row14, precision=2, step=.01, value=1.5)
        MaxSY = cmds.floatField(p=row14, precision=2, step=.01, value=1.5)
        MaxSZ = cmds.floatField(p=row14, precision=2, step=.01, value=1.5)
        row15 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.button(p=row15, label='Duplicate', command=lambda *args: self.randomPlacement(cmds.intField(NumDuplicates, query=True, value=True),
                                                                                           [cmds.floatField(MinTX, query=True, value=True),
                                                                                            cmds.floatField(MinTY, query=True, value=True),
                                                                                            cmds.floatField(MinTZ, query=True, value=True)] ,
                                                                                           [cmds.floatField(MaxTX, query=True, value=True),
                                                                                            cmds.floatField(MaxTY, query=True, value=True),
                                                                                            cmds.floatField(MaxTZ, query=True, value=True)],
                                                                                           [cmds.floatField(MinRX, query=True, value=True),
                                                                                            cmds.floatField(MinRY, query=True, value=True),
                                                                                            cmds.floatField(MinRZ, query=True, value=True)],
                                                                                           [cmds.floatField(MaxRX, query=True, value=True),
                                                                                            cmds.floatField(MaxRY, query=True, value=True),
                                                                                            cmds.floatField(MaxRZ, query=True, value=True)],
                                                                                           [cmds.floatField(MinSX, query=True, value=True),
                                                                                            cmds.floatField(MinSY, query=True, value=True),
                                                                                            cmds.floatField(MinSZ, query=True, value=True)],
                                                                                           [cmds.floatField(MaxSX, query=True, value=True),
                                                                                            cmds.floatField(MaxSY, query=True, value=True),
                                                                                            cmds.floatField(MaxSZ, query=True, value=True)]))
        cmds.showWindow(windowName)

#rp = RandomPlacement()
#rp.create()