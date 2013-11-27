function [ answer ] = killProcessByPID( PID )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
answer = system(['taskkill /PID ',PID]);

end

