function [  ] = camControl_getAperture( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

set_node = XMLobj.createElement('get');
command_node.appendChild(set_node);

aperture_node = XMLobj.createElement('APERTURE');
set_node.appendChild(aperture_node);

end

