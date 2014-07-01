function [  ] = camControl_getListSpeed( XMLobj )
%CAMCONTROL_GETLISTSPEED Obtiene la lista de velocidades disponibles
% Añade una orden a XMLobj que obtiene el la lista de valores disponibles 
% de velocidad de obturación en el estado actual de la cámara.
%
% @param XMLobj es el objeto XML al que se agregara la órden.
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

get_node = XMLobj.createElement('getlist');
command_node.appendChild(get_node);

speed_node = XMLobj.createElement('SPEED');
get_node.appendChild(speed_node);

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