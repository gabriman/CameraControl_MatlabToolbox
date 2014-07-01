function [ newPhotos ] = camControl_getPhotosNew( dir, oldPhotos )
%CAMCONTROL_DETECTNEWPHOTOS Obtiene los nombres de las NUEVAS fotos del directorio
% Obtiene una lista de los nombres de los las nuevas fotograf�as detectadas
% comparando las fotograf�as actuales del directorio con la lista de las 
% que hab�a anteriormente.
%
% @param dir es el directorio donde queremos obtener la lista de im�genes.
% @param oldPhotos es la lista de fotografas con la que queremos comparar
% la nueva lista de fotograf�as. Se obtiene previamente con la funci�n 
% camControl_getPhotosActual.
% @return newPhotos es la lista de nuevas fotograf�as.


actualPhotos = camControl_getPhotosActual(dir);

newPhotos = setdiff(actualPhotos,oldPhotos);



end



%
%Copyright 2013 Gabriel Rodr�guez Rodr�guez.
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