function [ XMLobj,commands] = camControl_execute( options, XMLobj )
%CAMCONTROL_EXECUTE Summary of this function goes here
%   Detailed explanation goes here

pathOut = [options('programFolder') '\' char(options('directoryOut')) '\' char(options('fileOut'))];
oldTimeOutFile = dir(pathOut);

path = [char(options('programFolder')) '\' char(options('directoryIn')) '\' char(options('fileIn'))];
xmlwrite(path,XMLobj);
XMLobj = createXMLobj();


newTimeOutFile = dir(pathOut);
while oldTimeOutFile.date==newTimeOutFile.date
    %fprintf('a\n')
    newTimeOutFile = dir(pathOut);
end


%This part will read the return file.
%We do a outputReaded file because there is times when the file is not
%ready to be readed because is being written. Then, a exception will be
%throwed. Will be in a loop until the file is ready to be parsed. We choose
%this option better than wait a fixed time (for example 2 secs)
outputReaded = false;
while outputReaded == false
    try
        commands = readReturnFile(options);
        outputReaded=true;
    catch ME
        
    end
end


