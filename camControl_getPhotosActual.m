function [ photos ] = camControl_getPhotosActual( dir )
%CAMCONTROL_DETECTACTUALPHOTOS Obtiene los nombres de las fotos del directorio
% Obtiene una lista de los nombres de los archivos de tipo imagen (.jpg y 
% .CR2 soportados) que se encuentran en el directorio indicado. 
% Se llama antes de la toma de fotografías para posteriormente realizar una
% comprobación similar y aplicar la diferencia entre las dos listas para 
% saber cuales son las nuevas fotografías tomadas.
%
% @param dir es el directorio donde queremos obtener la lista de imagenes.
% @return photos es la lista de fotografías.

typeList = ['*.jpg'; '*.CR2' ];   % You can add more picture formats
                                        % supported here 
types = cellstr(typeList)

photos = [];
for i=1:length(types)
    t = char(types(i));
    temp = getListFiles(dir,t);
    photos = [photos temp];
end

end



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
