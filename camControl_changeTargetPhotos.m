function [  ] = camControl_changeTargetPhotos( XMLobj, value, pathDir )
%CAMCONTROL_CHANGETARGETPHOTOS Cambia el destino de las fotos que se 
%tomarán
% Añade una orden a XMLobj para cambiar el objetivo 
% donde se almacenaran las fotografías al hacer nuevas tomas.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @param value es el objetivo donde se quieren almacenar las fotos. 
% Puede ser "camera", "host" o "both".
% @param pathDir es el directorio donde queremos almacenar las fotografías,
%solamente necesario en caso de que value sea \host" o \both".
% @return -

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

action_node = XMLobj.createElement('action');
command_node.appendChild(action_node);

tarjetSave_node = XMLobj.createElement('targetSave');
action_node.appendChild(tarjetSave_node);

tarjet_node = XMLobj.createElement('target');
tarjetSave_node.appendChild(tarjet_node);
value_node = XMLobj.createTextNode(value);
tarjet_node.appendChild(value_node);

if nargin == 3
    path_node = XMLobj.createElement('path');
    tarjetSave_node.appendChild(path_node);
    pathValue_node = XMLobj.createTextNode(pathDir);
    path_node.appendChild(pathValue_node);
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
