function varargout = pop(varargin)
% POP MATLAB code for pop.fig
%      POP, by itself, creates a new POP or raises the existing
%      singleton*.
%
%      H = POP returns the handle to a new POP or the handle to
%      the existing singleton*.
%
%      POP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POP.M with the given input arguments.
%
%      POP('Property','Value',...) creates a new POP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pop_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pop_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pop

% Last Modified by GUIDE v2.5 26-Mar-2019 15:38:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pop_OpeningFcn, ...
                   'gui_OutputFcn',  @pop_OutputFcn, ...
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


% --- Executes just before pop is made visible.
function pop_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin  command line arguments topop (see VARARGIN)
handles.muhf = {'B�l�m Se�iniz...','Bilgisayar','Genel'};
handles.fef = {'B�l�m Se�iniz...','fizik','kimya'};
handles.ibff = {'B�l�m Se�iniz...','maliye' ,'i�letme'};
fakulteler = {'Fak�lte Se�iniz...' , 'Muhf' ,'Fef' , '�bff'};
set(handles.popupmenu1,'String',fakulteler);
set(handles.popupmenu2,'String', 'B�l�m Se�iniz...' ,'Enable' , 'off');
% Choose default command line output for pop
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pop wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pop_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
popup1 = cellstr (get(hObject,'String'));
deger = get(hObject,'Value');
x = popup1{deger};
switch x
    case 'Muhf'
        set(handles.popupmenu2,'String',handles.muhf);
        set(handles.popupmenu2,'Enable','on');
    case 'Fef'
        set(handles.popupmenu2,'String',handles.fef);
        set(handles.popupmenu2,'Enable','on');
    case '�bff'
        set(handles.popupmenu2,'String',handles.ibff);
        set(handles.popupmenu2,'Enable','on');
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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

popup2 = cellstr (get(hObject,'String'));
deger = get(hObject,'Value');
x = popup2{deger};
switch x
    
    case 'Bilgisayar'
        axes(handles.axes1);
        a = imread('windows_11-2560x1440.jpg');
                imshow(a)
    case 'fizik'
        axes(handles.axes1);
        a = imread('PbXjwS.jpg');
        imshow(a)
    case 'maliye'
        axes(handles.axes1);
        a = imread('madrid-city-wallpaper.jpg');
        imshow(a)
   
end
% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
