function [  ] = camControl_changeTargetPhotos( XMLobj, value, pathDir )
%CAMCONTROL_CHANGEISO Summary of this function goes here
%   Detailed explanation goes here
%   value could be "camera", "host" or "both"
%   pathDir is optional (only used when is host or both). If you choose host
%   or both without path, path defined before will be used(or default path
%   if never was changed


command_node = XMLobj.createElement('command');
XMLobj.getDocumentElement.appendChild(command_node);

action_node = XMLobj.createElement('action');
command_node.appendChild(action_node);

tarjetSave_node = XMLobj.createElement('targetSave');
action_node.appendChild(tarjetSave_node);

tarjet_node = XMLobj.createElement('target');
tarjetSave_node.appendChild(tarjet_node);
value_node = XMLobj.createTextNode(value);
tarjet_node.appendChild(value_node);

if nargin == 3
    path_node = XMLobj.createElement('path');
    tarjetSave_node.appendChild(path_node);
    pathValue_node = XMLobj.createTextNode(pathDir);
    path_node.appendChild(pathValue_node);
end

end

