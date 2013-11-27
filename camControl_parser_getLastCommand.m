function [ code, message, command, parameter ] = camControl_parser_getLastCommand( commands )
%CAMCONTROL_PARSER_GETLASTCOMMAND Summary of this function goes here
%   Detailed explanation goes here


i = size(commands,2);       %In the end
code = commands(i).code;
message = commands(i).message;
command = commands(i).command;
parameter = commands(i).parameter;

end

