%TITLE: MAIN PROJECT GUI SOURCE FILE
%AUTHOR: SUNDEEP JOSEPH MACHADO
%DATE MODIFIED: DECEMBER 17 2010

function varargout = mainprojectgui(varargin)
% MAINPROJECTGUI M-file for mainprojectgui.fig
%      MAINPROJECTGUI, by itself, creates a new MAINPROJECTGUI or raises the existing
%      singleton*.
%
%      H = MAINPROJECTGUI returns the handle to a new MAINPROJECTGUI or the handle to
%      the existing singleton*.
%
%      MAINPROJECTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINPROJECTGUI.M with the given input arguments.
%
%      MAINPROJECTGUI('Property','Value',...) creates a new MAINPROJECTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainprojectgui_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainprojectgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainprojectgui

% Last Modified by GUIDE v2.5 19-Apr-2009 19:24:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainprojectgui_OpeningFcn, ...
                   'gui_OutputFcn',  @mainprojectgui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before mainprojectgui is made visible.
function mainprojectgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainprojectgui (see VARARGIN)

% Choose default command line output for mainprojectgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainprojectgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainprojectgui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

addtodatabase;
delete(mainprojectgui);


% Hint: get(hObject,'Value') returns toggle state of add


% --- Executes on button press in search.
function search_Callback(hObject, eventdata, handles)
% hObject    handle to search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Comment By sundeep machado
%The following line is used to call another gui 
%Just type in the name of gui u wanna call
%the main gui disaapears
searchindatabase
delete(mainprojectgui);

% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% SUNDEEP MACHADO
%
%This block of code is used for a close dialog box.............
% It is important to note that we have to create a dialog box beforehand we
% use the code..........
%The modal dialog box should be in same folder as guis which want to use
%the close function.........

	% Get the current position of the GUI from the handles structure
	% to pass to the modal dialog.
	pos_size = get(handles.figure1,'Position');
	% Call modaldlg with the argument 'Position'.
	user_response = modaldlg('Title','Confirm Close');
	switch user_response
        case {'No'}
		% take no action
    case 'Yes'
		% Prepare to close GUI application window
		%                  .
		%                  .
		%                  .
		delete(handles.figure1)
    end




% --- Executes on button press in firstrun.
function firstrun_Callback(hObject, eventdata, handles)
% hObject    handle to firstrun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

first_run;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web(['file:///' which('cbirusingdct.html')]);

