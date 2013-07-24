function [ newPhotos ] = camControl_getPhotosNew( dir, oldPhotos )
%DETECTNEWPHOTOS Return list of photos which wasnt in previuosly list of
%files

%   Detaileds explanation goes here


actualPhotos = getPhotosActual(dir);

newPhotos = setdiff(actualPhotos,oldPhotos);



end

