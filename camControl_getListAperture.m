function [  ] = camControl_getListAperture( XMLobj )
%CAMCONTROL_GETISO Summary of this function goes here
%   Detailed explanation goes here

command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

get_node = XMLobj.createElement('getlist');
command_node.appendChild(get_node);

aperture_node = XMLobj.createElement('APERTURE');
get_node.appendChild(aperture_node);

end

