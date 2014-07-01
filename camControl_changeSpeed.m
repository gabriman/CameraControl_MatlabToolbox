function [  ] = camControl_changeSpeed( XMLobj, value )
%CAMCONTROL_CHANGESPEED Cambia la velocidad de obturación actual de la cámara
% Añade una orden a XMLobj para cambiar de valor la velocidad
% al valor indicado.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @param value es el nuevo valor al que queremos cambiar el parámetro.
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('set');
command_node.appendChild(set_node);

speed_node = XMLobj.createElement('SPEED');
set_node.appendChild(speed_node);

value_node = XMLobj.createTextNode(value);
speed_node.appendChild(value_node);

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
