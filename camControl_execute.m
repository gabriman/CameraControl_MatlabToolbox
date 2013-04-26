function [ XMLobj ] = camControl_execute( options, XMLobj )
%CAMCONTROL_EXECUTE Summary of this function goes here
%   Detailed explanation goes here

path = [char(options('programFolder')) '\' char(options('directoryIn')) '\' char(options('fileIn'))];
xmlwrite(path,XMLobj);
XMLobj = createXMLobj();


end

