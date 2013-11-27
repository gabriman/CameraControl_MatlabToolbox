function [ answer ] = killProcessByName( processName )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

answer = system(['taskkill /IM ',processName]);


end

