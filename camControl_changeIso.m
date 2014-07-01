function [  ] = camControl_changeIso( XMLobj, value )
%CAMCONTROL_CHANGEISO Cambia la sensibilidad ISO actual de la c�mara
% A�ade una orden a XMLobj para cambiar de valor la sensibilidad
% al valor indicado.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @param value es el nuevo valor al que queremos cambiar el par�metro.
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('set');
command_node.appendChild(set_node);

ISO_node = XMLobj.createElement('ISO');
set_node.appendChild(ISO_node);

value_node = XMLobj.createTextNode(value);
ISO_node.appendChild(value_node);

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