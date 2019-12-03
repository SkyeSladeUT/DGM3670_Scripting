import maya.cmds as cmds

colorDictionary = {'null': 0, 'black':1, 'dark grey':2, 'grey':3, 'dark red':4,
                   'dark blue':5, 'blue':6, 'dark green':7, 'dark purple':8, 'pink':9,
                   'brown':10, 'dark brown':11, 'red':12, 'bright red':13,
                   'bright green':14, 'blue2':15, 'white':16, 'yellow':17, 'pastel blue':18,
                   'pastel green':19, 'pastel pink':20, 'pastel brown':21, 'pastel yellow':22,
                   'green2':23, 'light brown':24, 'puke':25, 'grass green':26, 'teal':27, 'blue3':28,
                   'blue4':29, 'purple':30, 'magenta':31}

def createControl():
    sels = cmds.ls(sl=True)
    if len(sels):
        for sel in sels:
            bounds = cmds.xform(sel, boundingBox=True)
            print bounds

def changeColor(color):
    sels = cmds.ls(sl=True)
    if len(sels) > 0:
        for sel in sels:
            children = cmds.listRelatives(sel, children=True, shapes=True)

            for child in children:
                cmds.setAttr('%s.overrideEnabled' % (child), True)
                if type(color) is str:
                    cmds.setAttr('%s.overrideColor' % (child), colorDictionary.get(color))
                if type(color) is int:
                    cmds.setAttr('%s.overrideColor' % (child), color)

createControl()