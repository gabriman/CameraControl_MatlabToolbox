function [  ] = camControl_changeSpeed( XMLobj, value )
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('set');
command_node.appendChild(set_node);

speed_node = XMLobj.createElement('SPEED');
set_node.appendChild(speed_node);

value_node = XMLobj.createTextNode(value);
speed_node.appendChild(value_node);

end

