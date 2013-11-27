%Not working yet

function [ commandString ] = camControl_xmlOutToString( commands )
%CAMCONTROL_XMLOUTTOSTRING Summary of this function goes here
%   Detailed explanation goes here

for i=1:size(commands,2),
    c = commands(i).code;
    p = commands(i).parameter;
    com = commands(i).command;
    m = commands(i).message;
    v = commands(i).value;
    
    if c == 0
        commandString(i) = char('OK: ')
    %else
       % commandString(i) = char('ERROR') ;
        
    end


end

