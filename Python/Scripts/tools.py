import maya.cmds as cmds

def select_all():
    cmds.select(all=True)
    sels = cmds.ls(sl=True)
    return sels

def ball():
    cmds.polySPhere('Ball_Geo')
    return obj