function varargout = quiz1(varargin)
% QUIZ1 MATLAB code for quiz1.fig
%      QUIZ1, by itself, creates a new QUIZ1 or raises the existing
%      singleton*.
%
%      H = QUIZ1 returns the handle to a new QUIZ1 or the handle to
%      the existing singleton*.
%
%      QUIZ1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUIZ1.M with the given input arguments.
%
%      QUIZ1('Property','Value',...) creates a new QUIZ1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before quiz1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to quiz1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help quiz1

% Last Modified by GUIDE v2.5 26-Mar-2019 18:19:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @quiz1_OpeningFcn, ...
                   'gui_OutputFcn',  @quiz1_OutputFcn, ...
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


% --- Executes just before quiz1 is made visible.
function quiz1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to quiz1 (see VARARGIN)
handles.turk = {'Ýlçe Seçiniz','Ýstanbul', 'Þanlýurfa', 'Çorum'};
handles.hin = {'Ýlçe Seçiniz','Yeni Delhi', 'Agra'};
handles.ist={'Topkapý Saray','Ayasofya Camii','Kýz Kulesi'};
handles.san={'Balýklý Göl','Göbeklitepe'};
handles.cor={'Ýncesu Kanyonu','Hattuþaþ'};
handles.yen={'Kýzýl Kale','Hümayun Türbesi'};
handles.agra={'Tac Mahal','Agra Kalesi'};
ulkeler = {'Ülke Seçiniz', 'Türkiye', 'Hindistan'};
set(handles.popupmenu1,'String',ulkeler);
set(handles.popupmenu2,'String','Ýl Seçiniz..','Visible','off');
set(handles.popupmenu3,'String','Ýlçe Seçiniz','Visible','off');



% Choose default command line output for quiz1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes quiz1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = quiz1_OutputFcn(hObject, eventdata, handles) 
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
popup1listesi = cellstr(get(hObject,'String'));
deger = get(hObject,'Value');
x = popup1listesi{deger};
switch x
    case 'Ýlçe Seçiniz'
        set(handles.popupmenu2,'Visible', 'on');
    case 'Türkiye'
        set(handles.popupmenu2, 'String', handles.turk);
        set(handles.popupmenu2,'Visible', 'on');
        resim=imread('turkiye.jpg');
        imshow(resim)
    case 'Hindistan'
        set(handles.popupmenu2, 'String', handles.hin);
        set(handles.popupmenu2,'Visible', 'on');
        resim=imread('hindistan.jpg');
        imshow(resim)
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
popup1listesi = cellstr(get(hObject,'String'));
deger = get(hObject,'Value');
x = popup1listesi{deger};
switch x
    case 'Ýl Seçiniz'
        set(handles.popupmenu3,'Visible', 'on');
    case 'Ýstanbul'
        set(handles.popupmenu3, 'String', handles.ist);
        set(handles.popupmenu3,'Visible', 'on');
          resim=imread('istanbul.jpg');
        imshow(resim)
    case 'Þanlýurfa'
        set(handles.popupmenu3, 'String', handles.san);
        set(handles.popupmenu3,'Visible', 'on');
          resim=imread('sanliurfa.jpg');
        imshow(resim)
    case 'Çorum'
        set(handles.popupmenu3, 'String', handles.cor);
        set(handles.popupmenu3,'Visible', 'on');
          resim=imread('corum.jpg');
        imshow(resim)
    case 'Yeni Delhi'
        set(handles.popupmenu3, 'String', handles.yen);
        set(handles.popupmenu3,'Visible', 'on');
          resim=imread('yenidelhi.jpg');
        imshow(resim)
    case 'Agra'
        set(handles.popupmenu3, 'String', handles.agra);
        set(handles.popupmenu3,'Visible', 'on');
        resim=imread('agra.jpg');
        imshow(resim)
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


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
popup3 = cellstr (get(hObject,'String'));
deger = get(hObject,'Value');
x = popup3{deger};
switch x
    
    case 'Topkapý Saray'
        axes(handles.axes1);
        a = imread('topkapi_1.jpg');
        imshow(a)
    case 'Ayasofya Camii'
        axes(handles.axes1);
        a = imread('ayasofya_1.jpg');
        imshow(a)
    case 'Kýz Kulesi'
        axes(handles.axes1);
        a = imread('kiz_kulesi_1.jpg');
        imshow(a)
    case 'Balýklý Göl'
        axes(handles.axes1);
        a = imread('balikli_gol_1.jpg');
        imshow(a)
    case 'Göbeklitepe'
        axes(handles.axes1);
        a = imread('gobekli_tepe_1.jpg');
        imshow(a)
    case 'Ýncesu Kanyonu'
        axes(handles.axes1);
        a = imread('incesu_kanyonu_1.jpg');
        imshow(a)
    case 'Hattuþaþ'
        axes(handles.axes1);
        a = imread('hattusas_1.jpg');
        imshow(a)
    case 'Kýzýl Kale'
        axes(handles.axes1);
        a = imread('kizil_kale_1.jpg');
        imshow(a)
    case 'Hümayun Türbesi'
        axes(handles.axes1);
        a = imread('humayun_1.jpg');
        imshow(a)
    case 'Tac Mahal'
        axes(handles.axes1);
        a = imread('tac_mahal_1.jpg');
        imshow(a)
    case 'Agra Kalesi'
        axes(handles.axes1);
        a = imread('agra_kalesi_1.jpg');
        imshow(a)
    
    
   
end

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        
