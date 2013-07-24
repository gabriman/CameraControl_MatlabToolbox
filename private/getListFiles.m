%Function to get a list of specific files in a specified directory.

%INPUT: path= Path to the files

% type=type of files being looked, example *.doc % Always write “*.” and then the type of %file


function [ out ] = getListFiles(path,type)
%GETLISTFILES Summary of this function goes here
%   Detailed explanation goes here

list_dir=dir(fullfile(path,type));

list_dir={list_dir.name};

out=list_dir;

end


