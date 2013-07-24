function [  ] = camControl_getListIso( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

get_node = XMLobj.createElement('getlist');
command_node.appendChild(get_node);

ISO_node = XMLobj.createElement('ISO');
get_node.appendChild(ISO_node);

end

