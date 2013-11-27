%
%Copyright 2013 Gabriel Rodríguez Rodríguez.
%
%This program is free software: you can redistribute it and/or modify
%it under the terms of the GNU General Public License as published by
%the Free Software Foundation, either version 3 of the License, or
%(at your option) any later version.
%
%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%GNU General Public License for more details.
%
%You should have received a copy of the GNU General Public License
%along with this program. If not, see <http://www.gnu.org/licenses/>.

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

