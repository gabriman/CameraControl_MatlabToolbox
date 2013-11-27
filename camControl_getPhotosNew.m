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

function [ newPhotos ] = camControl_getPhotosNew( dir, oldPhotos )
%DETECTNEWPHOTOS Return list of photos which wasnt in previuosly list of
%files

%   Detaileds explanation goes here


actualPhotos = camControl_getPhotosActual(dir);

newPhotos = setdiff(actualPhotos,oldPhotos);



end

