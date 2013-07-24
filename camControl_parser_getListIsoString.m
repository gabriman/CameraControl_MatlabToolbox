function [ value ] = camControl_parser_getListIsoString( commands )
%CAMCONTROL_PARSER_GETISO Summary of this function goes here
%   Detailed explanation goes here

value = -1;

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if strcmp(commands(i).command,'getlist') && strcmp(commands(i).parameter,'ISO')
        if strcmp(commands(i).code,'0')
            value = commands(i).message;
            break
        end
    end
end