function [  ] = camControl_close(XMLobj)
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('close');
command_node.appendChild(set_node);

end
