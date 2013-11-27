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

function [ element ] = processCommand( node )
%PROCESSGETCOMMAND Summary of this function goes here
%   Detailed explanation goes here
%   mapElement with
%           command (get,getlist,set,action...)
%           parameter (optional. Else = ""). In action, parameter will be
%                                            the subcommand
%           code
%           message
%           value
messageValue = '';
valueValue = '';


commandName = node.getNodeName;

parameter = node.getFirstChild;
parameterName = parameter.getNodeName;

code = parameter.getElementsByTagName('code');
codeValue = code.item(0).getFirstChild.getNodeValue;
message = parameter.getElementsByTagName('message');

if message.getLength > 0 
    if message.item(0).hasChildNodes
        messageValue = message.item(0).getFirstChild.getNodeValue;
    end
end

value = parameter.getElementsByTagName('value');
if value.getLength > 0 
    if value.item(0).hasChildNodes
        valueValue = value.item(0).getFirstChild.getNodeValue;
    end
end


element = struct('command',commandName,'parameter',parameterName,'code',codeValue,'message',messageValue,'value',valueValue);





end

