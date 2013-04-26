function [  ] = camControl_changeIso( XMLobj, value )
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('set');
command_node.appendChild(set_node);

ISO_node = XMLobj.createElement('ISO');
set_node.appendChild(ISO_node);

value_node = XMLobj.createTextNode(value);
ISO_node.appendChild(value_node);

end

