function [ output_args ] = camControl_changeIso( pathOut, value )
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here


docNode = com.mathworks.xml.XMLUtils.createDocument('commands');
command_node = docNode.createElement('command');
docNode.getDocumentElement.appendChild(command_node);

set_node = docNode.createElement('set');
command_node.appendChild(set_node);

ISO_node = docNode.createElement('ISO');
set_node.appendChild(ISO_node);

value_node = docNode.createTextNode(value);
ISO_node.appendChild(value_node);


xmlwrite(pathOut,docNode)


end

