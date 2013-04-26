function [  ] = camControl_take(XMLobj)
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

action_node = XMLobj.createElement('action');
command_node.appendChild(action_node);

take_node = XMLobj.createElement('take');
action_node.appendChild(take_node);

end
