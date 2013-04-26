function [ output_args ] = camControl_close(pathOut)
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

docNode = com.mathworks.xml.XMLUtils.createDocument('commands');
command_node = docNode.createElement('command');
docNode.getDocumentElement.appendChild(command_node);

set_node = docNode.createElement('close');
command_node.appendChild(set_node);

xmlwrite(pathOut,docNode)


end
