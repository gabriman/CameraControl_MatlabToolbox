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