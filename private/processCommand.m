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

