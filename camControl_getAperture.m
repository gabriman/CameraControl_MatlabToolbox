function [  ] = camControl_getAperture( XMLobj )
%CAMCONTROL_GETAPERTURE Obtiene el valor del diafragma
% A�ade una orden a XMLobj que obtiene el valor actual del diafragma.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('get');
command_node.appendChild(set_node);

aperture_node = XMLobj.createElement('APERTURE');
set_node.appendChild(aperture_node);

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