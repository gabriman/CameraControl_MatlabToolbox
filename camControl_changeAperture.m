function [  ] = camControl_changeAperture( XMLobj, value )
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('set');
command_node.appendChild(set_node);

aperture_node = XMLobj.createElement('APERTURE');
set_node.appendChild(aperture_node);

value_node = XMLobj.createTextNode(value);
aperture_node.appendChild(value_node);

end

