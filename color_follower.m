function varargout = color_follower(varargin)
% COLOR_FOLLOWER M-file for color_follower.fig
%      COLOR_FOLLOWER, by itself, creates a new COLOR_FOLLOWER or raises the existing
%      singleton*.
%
%      H = COLOR_FOLLOWER returns the handle to a new COLOR_FOLLOWER or the handle to
%      the existing singleton*.
%
%      COLOR_FOLLOWER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLOR_FOLLOWER.M with the given input arguments.
%
%      COLOR_FOLLOWER('Property','Value',...) creates a new COLOR_FOLLOWER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before color_follower_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to color_follower_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES



% Begin initialization code
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @color_follower_OpeningFcn, ...
                   'gui_OutputFcn',  @color_follower_OutputFcn, ...
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
% End initialization code

% --- Executes just before color_follower is made visible.
function color_follower_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to color_follower (see VARARGIN)

% Choose default command line output for color_follower
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using color_follower.


% UIWAIT makes color_follower wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = color_follower_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla;

        photo=imread('C:\Users\Ahmed Zidan\Desktop\color follower\color follower\1\ball5.jpg');

popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
        image(photo)
 k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,1) >= 150)&(photo(i,j,2) <=100)&(photo(i,j,3) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
    
    case 2
         image(photo)
         k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,2) >= 150)&(photo(i,j,1) <=100)&(photo(i,j,3) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
    case 3
          image(photo)
         k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,3) >= 150)&(photo(i,j,1) <=100)&(photo(i,j,2) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
    case 4
        vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
img = getsnapshot(vid);
imshow(img)
imwrite(img,'C:\Users\Ahmed Zidan\Desktop\color follower\color follower\1\ball24.jpg');
photo=img;

k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,1) >= 150)&(photo(i,j,2) <=100)&(photo(i,j,3) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
      case 5
        vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
img = getsnapshot(vid);
imshow(img)
imwrite(img,'d:\1\ball24.jpg');
photo=img;

k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,2) >= 150)&(photo(i,j,1) <=100)&(photo(i,j,3) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
      case 6
        vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
img = getsnapshot(vid);
imshow(img)
imwrite(img,'C:\Users\Ahmed Zidan\Desktop\color follower\color follower\1\ball24.jpg');
photo=img;

k=1;
 h = size(photo,1) ;
 w = size(photo,2) ;
 
 
 for i=1:1:h;
      for j=1:1:w;
if((photo(i,j,3) >= 150)&(photo(i,j,2) <=100)&(photo(i,j,1) <= 100));
       hh(k)=i;
       ww(k)=j;
       k=k+1;
end
   
      end
 end
 
 row=min(hh);
 col=min(ww);
 rect_length=max(hh)-min(hh);
 rect_width =max(ww)-min(ww);

  rectangle('Position',[col,row,rect_width,rect_length],...
          'Curvature',[0.8,0.4],...
         'LineWidth',2,'LineStyle','--')
end


% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

set(hObject, 'String', {'Select Red', 'Select Green', 'Select Blue','Select Red from Camera','Select Green from Camera','Select Blue from Camera'});
