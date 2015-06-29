function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 12-Jan-2014 21:55:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @untitled_OpeningFcn, ...
    'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)
handles.x=0;
handles.y=0;
handles.R=0;
handles.xstat=0;
handles.ystat=0;
handles.Rstat=0;
handles.numer=0;
handles.Vt=0.2;
handles.Y=0.92;
handles.m=0.0004;
handles.F=0.01;
handles.dt=1;
handles.t=100;
handles.ustaw=1;
handles.rodzajstaty=1;
% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Vt=get(hObject,'String');
handles.Vt=str2num(Vt);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Y=get(hObject,'String');
handles.Y=str2num(Y);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=get(hObject,'String');
handles.m=str2num(m);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
F=get(hObject,'String');
handles.F=str2num(F);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dt=get(hObject,'String');
handles.dt=str2num(dt);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=get(hObject,'String');
handles.t=str2num(t);
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.numer=handles.numer+1;
set(handles.text15,'String',num2str(handles.numer));
if handles.ustaw==2
    [handles.x, handles.y, handles.xstat, handles.ystat]=Ruch3d(handles.x, handles.y, handles.xstat, handles.ystat, handles.Vt, handles.Y, handles.m, handles.F, handles.dt, handles.t);
    handles.viktor2dxmax(handles.numer)=max(handles.xstat);
    handles.viktor2dxmin(handles.numer)=min(handles.xstat);
    handles.viktor2dxmean(handles.numer)=mean(handles.xstat);
    handles.viktor2dxstd(handles.numer)=std(handles.xstat);
    
    handles.viktor2dymax(handles.numer)=max(handles.ystat);
    handles.viktor2dymin(handles.numer)=min(handles.ystat);
    handles.viktor2dymean(handles.numer)=mean(handles.ystat);
    handles.viktor2dystd(handles.numer)=std(handles.ystat);
    
    if handles.rodzajstaty==1
        set(handles.text18,'String',num2str(max(handles.xstat)));
        set(handles.text20,'String',num2str(max(handles.ystat)));
        set(handles.text29,'String',num2str(min(handles.xstat)));
        set(handles.text33,'String',num2str(min(handles.ystat)));
        set(handles.text24,'String',num2str(mean(handles.xstat)));
        set(handles.text25,'String',num2str(mean(handles.ystat)));
        set(handles.text26,'String',num2str(std(handles.xstat)));
        set(handles.text39,'String',num2str(std(handles.ystat)));
    else
        set(handles.text18,'String',num2str(max(handles.viktor2dxmax)));
        set(handles.text20,'String',num2str(max(handles.viktor2dymax)));
        
        set(handles.text29,'String',num2str(min(handles.viktor2dxmin)));
        set(handles.text33,'String',num2str(min(handles.viktor2dymin)));
        
        set(handles.text24,'String',num2str(mean(handles.viktor2dxmean)));
        set(handles.text25,'String',num2str(mean(handles.viktor2dymean)));
        
        set(handles.text26,'String',num2str(std(handles.viktor2dxstd)));
        set(handles.text39,'String',num2str(std(handles.viktor2dystd)));
    end
    
else
    [handles.R, handles.Rstat]=Ruch(handles.R, handles.Rstat, handles.Vt, handles.Y, handles.m, handles.F, handles.dt, handles.t);
    
    handles.viktor1dmax(handles.numer)=max(handles.Rstat);
    handles.viktor1dmin(handles.numer)=min(handles.Rstat);
    handles.viktor1dmean(handles.numer)=mean(handles.Rstat);
    handles.viktor1dstd(handles.numer)=std(handles.Rstat);
    
    if handles.rodzajstaty==1
        set(handles.text18,'String',num2str(max(handles.Rstat)));
        set(handles.text20,'String',0);
        set(handles.text29,'String',num2str(min(handles.Rstat)));
        set(handles.text33,'String',0);
        set(handles.text24,'String',num2str(mean(handles.Rstat)));
        set(handles.text25,'String',0);
        set(handles.text26,'String',num2str(std(handles.Rstat)));
        set(handles.text39,'String',0);
    else
        set(handles.text18,'String',num2str(max(handles.viktor1dmax)));
        set(handles.text20,'String',0);
        set(handles.text29,'String',num2str(min(handles.viktor1dmin)));
        set(handles.text33,'String',0);
        set(handles.text24,'String',num2str(mean(handles.viktor1dmean)));
        set(handles.text25,'String',0);
        set(handles.text26,'String',num2str(std(handles.viktor1dstd)));
        set(handles.text39,'String',0);
    end
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
guidata(hObject, handles);
% Hint: place code in OpeningFcn to populate axes1


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'Value')==1
    handles.ustaw=1;
    handles.numer=0;
elseif get(hObject,'Value')==2
    handles.ustaw=2;
    handles.numer=0;
end
guidata(hObject, handles);
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


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
if get(hObject,'Value')==1
    handles.rodzajstaty=1;
elseif get(hObject,'Value')==2
    handles.rodzajstaty=2;
end
guidata(hObject, handles);
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.ustaw==2
save wyniki.txt, handles.viktor2dxmax, handles.viktor2dxmin, handles.viktor2dxmean, handles.viktor2dxstd,
handles.viktor2dymax, handles.viktor2dymin, handles.viktor2dymean, handles.viktor2dystd;
else
save wyniki.txt, handles.viktor1dmax, handles.viktor1dmin, handles.viktor1dmean, handles.viktor1dstd;
end

guidata(hObject, handles);
