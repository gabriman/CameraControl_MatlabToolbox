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

%Not working yet

function [ commandString ] = camControl_xmlOutToString( commands )
%CAMCONTROL_XMLOUTTOSTRING Summary of this function goes here
%   Detailed explanation goes here

for i=1:size(commands,2),
    c = commands(i).code;
    p = commands(i).parameter;
    com = commands(i).command;
    m = commands(i).message;
    v = commands(i).value;
    
    if c == 0
        commandString(i) = char('OK: ')
    %else
       % commandString(i) = char('ERROR') ;
        
    end


end

