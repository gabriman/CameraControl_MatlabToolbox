function [ code, message ] = readInitReturnFile( options )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fullPath = fullfile(options('programFolder'),char(options('directoryOut')),char(options('fileOut')));

outputReaded = false;
while outputReaded == false
    try
        XMLobj = xmlread(fullPath);
        
        removeIndentNodes(XMLobj.getChildNodes);

        allCommands = XMLobj.getElementsByTagName('init');
        %arrayCommands = cell(allCommands.getLength);
        command = allCommands.item(0);
        code = command.getFirstChild.getFirstChild.getData;
        message = command.getLastChild.getFirstChild.getData;

        outputReaded = true;
        
    catch ME
   
    end
end

end

