function [ photos ] = camControl_getPhotosActual( dir )
%DETECTACTUALPHOTOS Return list of photos in this directory
%   Detailed explanation goes here

typeList = ['*.jpg'; '*.CR2' ];   % You can add more picture formats
                                        % supported here 
types = cellstr(typeList)

photos = [];
for i=1:length(types)
    t = char(types(i));
    temp = getListFiles(dir,t);
    photos = [photos temp];
end

end

