function varargout = proje3(varargin)
% PROJE3 MATLAB code for proje3.fig
%      PROJE3, by itself, creates a new PROJE3 or raises the existing
%      singleton*.
%
%      H = PROJE3 returns the handle to a new PROJE3 or the handle to
%      the existing singleton*.
%
%      PROJE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJE3.M with the given input arguments.
%
%      PROJE3('Property','Value',...) creates a new PROJE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before proje3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to proje3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help proje3

% Last Modified by GUIDE v2.5 25-Mar-2019 13:28:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @proje3_OpeningFcn, ...
                   'gui_OutputFcn',  @proje3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before proje3 is made visible.
function proje3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to proje3 (see VARARGIN)

% Choose default command line output for proje3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes proje3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = proje3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
 a1 = cellstr(get(hObject,'String'))
 a2 = {get(hObject, 'Value' )}
 YAP = a1 {a2}
 switch YAP
     case 'kýrmýzý'
         set(handles.figure1 ,'Color' ,'r')
     case 'mavi'
         set(handles.figure1,'Color','b')
     case 'yeþil'
         set(handles.figure1,'Color','g')
     otherwise
         set(handles.figure1 ,'Color' ,rand(1,3) )
 end
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
