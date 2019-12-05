import maya.cmds as cmds

colorDictionary = {'null': 0, 'black':1, 'dark grey':2, 'grey':3, 'dark red':4,
                   'dark blue':5, 'blue':6, 'dark green':7, 'dark purple':8, 'pink':9,
                   'brown':10, 'dark brown':11, 'red':12, 'bright red':13,
                   'bright green':14, 'blue2':15, 'white':16, 'yellow':17, 'pastel blue':18,
                   'pastel green':19, 'pastel pink':20, 'pastel brown':21, 'pastel yellow':22,
                   'green2':23, 'light brown':24, 'puke':25, 'grass green':26, 'teal':27, 'blue3':28,
                   'blue4':29, 'purple':30, 'magenta':31}

def createControl(color):
    sels = cmds.ls(sl=True)
    if len(sels):
        for sel in sels:
            bounds = cmds.xform(sel, query=True, boundingBox=True)
            rotation = cmds.xform(sel, query=True, worldSpace=True, rotation=True)
            TX = (bounds[0]+bounds[3])/2
            TY = (bounds[1]+bounds[4])/2
            TZ = (bounds[2]+bounds[5])/2
            translation = ((bounds[0]+bounds[3])/2, (bounds[1]+bounds[4])/2, (bounds[2]+bounds[5])/2)
            controlGroupObj = cmds.group(empty=True, name=sel.replace('jnt', 'ctrl_grp'))
            controlObj = cmds.circle(name=sel.replace('jnt', 'ctrl'), nr=(0,1,0))
            changeColor(color, sel)
            cmds.parent(controlObj, controlGroupObj)
            cmds.xform(controlGroupObj, rotation=rotation, translation=translation)


def changeColor(color, obj):
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

createControl("pastel blue")