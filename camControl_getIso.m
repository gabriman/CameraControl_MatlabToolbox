function [  ] = camControl_getIso( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('get');
command_node.appendChild(set_node);

ISO_node = XMLobj.createElement('ISO');
set_node.appendChild(ISO_node);

end

