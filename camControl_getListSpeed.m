function [  ] = camControl_getListSpeed( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

get_node = XMLobj.createElement('getlist');
command_node.appendChild(get_node);

speed_node = XMLobj.createElement('SPEED');
get_node.appendChild(speed_node);

end

