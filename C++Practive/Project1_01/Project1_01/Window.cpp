#include <Windows.h>
#include<iostream>
#include <string>
using namespace std;

//Event System
//calling convention CALLBACK
LRESULT CALLBACK WindowProcedure(HWND, UINT, WPARAM, LPARAM);
int windowSize[2] = { 0,0 };


//WINAPI defines how the parameters are passed
//HINSTANCE id for the application 
	//hinst is the current app
	//hprevInst previous app, 
//LPSTR args - collectors command line arguments
//ncmdshow more command line information
int WINAPI WinMain(HINSTANCE hInst, HINSTANCE hPrevInst, LPSTR args, int ncmdshow) {
	//variables
	string codeText = "";
	string windowText;
	//creates a window class
	WNDCLASSW wc = { 0 };
	//defines background window color
	wc.hbrBackground = (HBRUSH)COLOR_WINDOW;
	//creates cursor for inside the window
	//HINSTANCE, cursor name (predefined constants)
	wc.hCursor = LoadCursor(NULL, IDC_ARROW);
	//Hinstance of window class
	//Provided by windows
	wc.hInstance = hInst;
	//lpsz class name
	//prefix of the class
	//must use L""
	wc.lpszClassName = L"UIWindowClass";
	//Window Procedure
	//Event system sends msg for events
	wc.lpfnWndProc = WindowProcedure;

	//register window clas
	if (!RegisterClassW(&wc)) {
		MessageBox(NULL, "FAIL", "GUI Window", MB_OK);
		return -1;
	}

	//Args
		//class name - lpszClassName
		//window name - displayed at top
		//window style - WS_... constants (WS_OVERLAPPEDWINDOW | WS_VISIBLE) will pass two values together
		//x and y pos of window (top left corner)
		//height and width of window 
		//Parent handler - NULL
		//Etch Menu
		//Etch instance
		//parameters
	CreateWindowW(L"UIWindowClass", L"Window", WS_OVERLAPPEDWINDOW | WS_VISIBLE, 100, 100, 500, 500, NULL, NULL, NULL, NULL);

	//Message Structure
	MSG msg = { 0 };

	//process messages
	while (GetMessage(&msg, NULL, NULL, NULL)) {
		TranslateMessage(&msg);
		//sends message to processor function (WindowProcedure)
		DispatchMessage(&msg);
	}

	windowText = windowSize[0] + "," + windowSize[1];
	MessageBox(NULL, windowText.c_str(), "Window Size", MB_OK);
	//displays a message on the screen
	//Window Handler, Message Text, Message Box Name, Type of Message Box
	//MessageBox(NULL, "TEST", "GUI Window", MB_OK);
	return 0;
}

//window handler for message
//UINT (unsigned int) msg which was sent
LRESULT CALLBACK WindowProcedure(HWND hWnd, UINT msg, WPARAM wp, LPARAM lp) {
	RECT rect;
	switch (msg) {
		//constant message definitions start with WM
	case WM_DESTROY:
		//Quits the program
		PostQuitMessage(0);
		break;
	case WM_SIZE:
		//MessageBox(NULL, "RESIZE", "GUI Window", MB_OK);
		//Store Values
		if (GetWindowRect(hWnd, &rect))
		{
			windowSize[0] = rect.right - rect.left;
			windowSize[1] = rect.bottom - rect.top;
		}
		break;
	case WM_LBUTTONDOWN:
		//MessageBox(NULL, "Click", "GUI Window", MB_OK);
		break;
	default:
		//takes care of unused processes
		return DefWindowProcW(hWnd, msg, wp, lp);
	}
}