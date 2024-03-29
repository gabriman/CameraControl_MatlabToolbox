function [  ] = camControl_take(XMLobj)
%CAMCONTROL_TAKE Ordena a la c�mara tomar una fotograf�a
% A�ade una orden a XMLobj para solicitar a la camara que tome una 
% fotograf�a.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

action_node = XMLobj.createElement('action');
command_node.appendChild(action_node);

take_node = XMLobj.createElement('take');
action_node.appendChild(take_node);

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