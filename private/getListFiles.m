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

%Function to get a list of specific files in a specified directory.

%INPUT: path= Path to the files

% type=type of files being looked, example *.doc % Always write “*.” and then the type of %file


function [ out ] = getListFiles(path,type)
%GETLISTFILES Summary of this function goes here
%   Detailed explanation goes here

list_dir=dir(fullfile(path,type));

list_dir={list_dir.name};

out=list_dir;

end


