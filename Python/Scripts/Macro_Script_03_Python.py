import maya.cmds as cmds
import random


def CreateSnowFlake(numOfLayers):
    snowflakeObject = cmds.polyCylinder(height = .5, subdivisionsCaps = 0, subdivisionsAxis = 6)
    snowflakeobj = snowflakeObject[0]
    MaxTrans = 1
    MinTrans = .1
    MinScale = .5
    MaxScale = .9
    randTrans = .5
    randScale = random.uniform(MinScale, MaxScale)
    snowflakePoints_01 = [snowflakeobj + ".f[1]", snowflakeobj + ".f[3]", snowflakeobj + ".f[5]"]
    cmds.polyExtrudeFacet(snowflakePoints_01)
    cmds.scale(1,randScale,1, snowflakePoints_01, cs=True)
    snowflakePoints_02 = [snowflakeobj + ".f[0]", snowflakeobj + ".f[2]", snowflakeobj + ".f[4]"]
    cmds.polyExtrudeFacet(snowflakePoints_02)
    cmds.scale(1,randScale,1, snowflakePoints_02, cs=True)
    snowflakePoints = snowflakePoints_01 + snowflakePoints_02
    MinScale = .5
    MaxScale = 2

    for i in range(0, numOfLayers, 1):
        style1 = random.randint(0,1)
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


def RandomPlacement(objName, minT, maxT, minR, maxR, minS, maxS):
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


def SpawnSnowFlakes(numOfFlakes, minT, maxT, minR, maxR, minS, maxS):
    snowflakeGroupName = cmds.group(empty=True, name="Snowflakes")
    for i in range(0, numOfFlakes, 1):
        numOfLayersRand = random.randint(3,7)
        snowflake = CreateSnowFlake(numOfLayersRand)
        cmds.parent(snowflake, snowflakeGroupName)
        RandomPlacement(snowflake, minT, maxT, minR, maxR, minS, maxS)
        cmds.rename(snowflake, 'snowflake')


SpawnSnowFlakes(20, [-50, -50, -50], [50, 50, 50], [0, 0, 0], [180, 180, 180], [.25,.25,.25], [1.5,1.5,1.5])