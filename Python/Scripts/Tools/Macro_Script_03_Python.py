import maya.cmds as cmds
import random


class Snowflake():
    def __init__(self):
        self.window_name = "SnowflakeGenerator"

    def create(self):
        self.delete()
        windowName = cmds.window(self.window_name, t='Snowflake Generator')
        columnName = cmds.columnLayout(parent=windowName)
        row1 = cmds.rowLayout(p=columnName, numberOfColumns=1)
        cmds.text(parent=row1, label="Number of Snowflakes")
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
        cmds.button(p=row15, label='Generate',
                    command=lambda *args: self.SpawnSnowFlakes(cmds.intField(NumDuplicates, query=True, value=True),
                                                               [cmds.floatField(MinTX, query=True, value=True),
                                                                cmds.floatField(MinTY, query=True, value=True),
                                                                cmds.floatField(MinTZ, query=True, value=True)],
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
        cmds.showWindow(self.window_name)

    def delete(self):
        if (cmds.window(self.window_name, exists=True)):
            cmds.deleteUI(self.window_name)

    def CreateSnowFlake(self, numOfLayers):
        snowflakeObject = cmds.polyCylinder(height=.5, subdivisionsCaps=0, subdivisionsAxis=6)
        snowflakeobj = snowflakeObject[0]
        MaxTrans = 1
        MinTrans = .1
        MinScale = .5
        MaxScale = .9
        randTrans = .5
        randScale = random.uniform(MinScale, MaxScale)
        snowflakePoints_01 = [snowflakeobj + ".f[1]", snowflakeobj + ".f[3]", snowflakeobj + ".f[5]"]
        cmds.polyExtrudeFacet(snowflakePoints_01)
        cmds.scale(1, randScale, 1, snowflakePoints_01, cs=True)
        snowflakePoints_02 = [snowflakeobj + ".f[0]", snowflakeobj + ".f[2]", snowflakeobj + ".f[4]"]
        cmds.polyExtrudeFacet(snowflakePoints_02)
        cmds.scale(1, randScale, 1, snowflakePoints_02, cs=True)
        snowflakePoints = snowflakePoints_01 + snowflakePoints_02
        MinScale = .5
        MaxScale = 2

        for i in range(0, numOfLayers, 1):
            style1 = random.randint(0, 1)
            if style1:
                cmds.polyExtrudeFacet(snowflakePoints)
                randTrans = random.uniform(MinTrans, MaxTrans)
                cmds.move(randTrans, 0, 0, snowflakePoints, cs=True, wd=True, r=True)
                randScale = random.uniform(MinScale, MaxScale)
                cmds.scale(1, randScale, 1, snowflakePoints, cs=True)
            else:
                randTrans = random.uniform(MinTrans, MaxTrans)
                cmds.move(randTrans, 0, 0, snowflakePoints, cs=True, wd=True, r=True)
            cmds.polyExtrudeFacet(snowflakePoints)
            randScale = random.uniform(MinScale, MaxScale)
            cmds.scale(1, randScale, 1, snowflakePoints, cs=True)
            randTrans = random.uniform(MinTrans, MaxTrans)
            cmds.move(randTrans, 0, 0, snowflakePoints, cs=True, wd=True, r=True)
        return snowflakeobj

    def RandomPlacement(self, objName, minT, maxT, minR, maxR, minS, maxS):
        randXT = random.uniform(minT[0], maxT[0])
        randYT = random.uniform(minT[1], maxT[1])
        randZT = random.uniform(minT[2], maxT[2])
        randXR = random.uniform(minR[0], maxR[0])
        randYR = random.uniform(minR[1], maxR[1])
        randZR = random.uniform(minR[2], maxR[2])
        randScale = random.uniform(minS[0], maxS[0])

        cmds.move(randXT, randYT, randZT, objName, ws=True)
        cmds.scale(randScale, randScale, randScale, objName, cp=True, ws=True)
        cmds.rotate(randXR, randYR, randZR, objName, cp=True, ws=True)

    def SpawnSnowFlakes(self, numOfFlakes, minT, maxT, minR, maxR, minS, maxS):
        snowflakeGroupName = cmds.group(empty=True, name="Snowflakes")
        for i in range(0, numOfFlakes, 1):
            numOfLayersRand = random.randint(3, 7)
            snowflake = self.CreateSnowFlake(numOfLayersRand)
            cmds.parent(snowflake, snowflakeGroupName)
            self.RandomPlacement(snowflake, minT, maxT, minR, maxR, minS, maxS)
            cmds.rename(snowflake, 'snowflake')


#snow = Snowflake()
#snow.create()
