function [ code, message, command, parameter ] = camControl_parser_getLastError( commands )
%CAMCONTRO_PARSER_GETLASTERROR Summary of this function goes here
%   Detailed explanation goes here

code = '0';
message = '';
command = '';
parameter = '';

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if str2num(commands(i).code)<0
        code = commands(i).code;
        message = commands(i).message;
        command = commands(i).command;
        parameter = commands(i).parameter;
        break
    end
end

end