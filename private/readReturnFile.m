function [ arrayCommands ] = readReturnFile( options )
%READRETURNFILE Summary of this function goes here
%   Detailed explanation goes here


fullPath = fullfile(options('programFolder'),char(options('directoryOut')),char(options('fileOut')));


%This part will read the return file.
%We do a outputReaded file because there is times when the file is not
%ready to be readed because is being written. Then, a exception will be
%throwed. Will be in a loop until the file is ready to be parsed. We choose
%this option better than wait a fixed time (for example 2 secs)
outputReaded = false;
while outputReaded == false
    try
        file = dir(fullPath);
        if file.bytes==0 
            continue
        end
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
            arrayCommands(1)=struct('command','close','parameter','','code','0','message','','value','');
        end
        
        outputReaded = true;

    catch ME
        
    end
end


end

