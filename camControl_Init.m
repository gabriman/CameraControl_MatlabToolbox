function [options,XMLobj] = camControl_Init( programFolder  )
%INITPROGRAM Summary of this function goes here
%   Detailed explanation goes here


options = readConfFile(programFolder);
exe = char(options('executable'));

%Close any process before
[pathstr,name,ext] = fileparts(exe);
[name,ext]
killProcessByName([name,ext]);
%

command = ['start ' programFolder '\' exe];     % Not "/b" for work correctly
system(command)

XMLobj = createXMLobj();

end