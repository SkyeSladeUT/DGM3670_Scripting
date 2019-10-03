import maya.cmds as cmds

string windowName
string windowCode
int windowHeight
int windowWidth

def getWindowInfo()
    windowHeight = cmds.window(windowName, query=true, height=true)
    windowWidth = cmds.window(windowName, query=true, height=true)
    windowcode = "windowName = cmds.window(height=" + windowHeight + " width=" + windowWidth + "\n"
    windowCode += "cmds.showWindow(windowName)"

def startUpWindow()
    windowName = cmds.window(menuBar=true, width=200, title="Test Window Layout")
    menu01 = "addMenu"; 
    cmds.menu(menu01, label="Add", tearOff=true)
    cmds.menuItem(label="Text", parent=menu01)
    cmds.menuItem(label="Int Input", parent=menu01)
    cmds.menuItem(label="Float Input", parent=menu01)
    cmds.menuItem(label="Text Input", parent=menu01)
    menu02 = "createMenu";
    cmds.menu(menu02, label="Create", tearOff=true)
    cmds.menuItem(label="Window", command=('getWindowInfo()'), parent=menu02)
    cmds.showWindow(windowName);

def runStringCode(string code)
    cmds.eval(code)
    
startUpWindow()
