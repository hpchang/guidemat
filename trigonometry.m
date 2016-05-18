function varargout = trigonometry(varargin)
% TRIGONOMETRY MATLAB code for trigonometry.fig
%      TRIGONOMETRY, by itself, creates a new TRIGONOMETRY or raises the existing
%      singleton*.
%
%      H = TRIGONOMETRY returns the handle to a new TRIGONOMETRY or the handle to
%      the existing singleton*.
%
%      TRIGONOMETRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRIGONOMETRY.M with the given input arguments.
%
%      TRIGONOMETRY('Property','Value',...) creates a new TRIGONOMETRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trigonometry_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trigonometry_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trigonometry

% Last Modified by GUIDE v2.5 18-May-2016 17:28:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trigonometry_OpeningFcn, ...
                   'gui_OutputFcn',  @trigonometry_OutputFcn, ...
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


% --- Executes just before trigonometry is made visible.
function trigonometry_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trigonometry (see VARARGIN)

% Choose default command line output for trigonometry
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trigonometry wait for user response (see UIRESUME)
% uiwait(handles.figure_GUI);


% --- Outputs from this function are returned to the command line.
function varargout = trigonometry_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popup_color.
function popup_color_Callback(hObject, eventdata, handles)
% hObject    handle to popup_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_color contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_color


% --- Executes during object creation, after setting all properties.
function popup_color_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_plotfigure.
function push_plotfigure_Callback(hObject, eventdata, handles)
% hObject    handle to push_plotfigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_value_Callback(hObject, eventdata, handles)
% hObject    handle to edit_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_value as text
%        str2double(get(hObject,'String')) returns contents of edit_value as a double


% --- Executes during object creation, after setting all properties.
function edit_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_value_Callback(hObject, eventdata, handles)
% hObject    handle to slider_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
