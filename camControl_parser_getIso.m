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

function [ value ] = camControl_parser_getIso( commands )
%CAMCONTROL_PARSER_GETISO Summary of this function goes here
%   Detailed explanation goes here

value = -1;

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if strcmp(commands(i).command,'get') && strcmp(commands(i).parameter,'ISO')
        if strcmp(commands(i).code,'0')
            value = char(commands(i).message);
            break
        end
    end
end