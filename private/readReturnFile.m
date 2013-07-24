function [ arrayCommands ] = readReturnFile( options )
%READRETURNFILE Summary of this function goes here
%   Detailed explanation goes here


fullPath = fullfile(options('programFolder'),char(options('directoryOut')),char(options('fileOut')));


XMLobj = xmlread(fullPath);

removeIndentNodes(XMLobj.getChildNodes);

xmlRoot = XMLobj.getDocumentElement;
if strcmpi(xmlRoot.getNodeName,'commands')
    allCommands = XMLobj.getElementsByTagName('command');
    %arrayCommands = cell(allCommands.getLength);
    for k = 0:allCommands.getLength-1
        command = allCommands.item(k);
        arrayCommands(k+1) = processCommand(command.getFirstChild);
    end

elseif strcmpi(xmlRoot.getNodeName,'close')
    arrayCommands(1)='';
end



end

