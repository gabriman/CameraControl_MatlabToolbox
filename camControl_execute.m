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



commands = readReturnFile(options);



