function [  ] = camControl_Init(  )
%INITPROGRAM Summary of this function goes here
%   Detailed explanation goes here

programFolder = uigetdir;
options = readConfFile(programFolder);
exe = char(options('executable'))
% 
command = ['start /b ' programFolder '\' exe]
system(command)

%exeFile = strcat(RootFolder,'\Debug\CameraControlInterface.exe')
%run 'exeFile'

end

