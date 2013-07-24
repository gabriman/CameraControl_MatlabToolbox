function [  ] = camControl_getSpeed( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('get');
command_node.appendChild(set_node);

speed_node = XMLobj.createElement('SPEED');
set_node.appendChild(speed_node);

end

