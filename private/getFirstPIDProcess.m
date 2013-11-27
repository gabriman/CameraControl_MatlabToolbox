function [ pid ] = getFirstPIDProcess( processName )
%CHECKPROCESSRUNNING Summary of this function goes here
%   Detailed explanation goes here

%We use the "tasklist" ms-dos process to search if there is any process of
%"processname executing
[status,result] = system(['tasklist /FI "imagename eq ',processName]);

%If there is no results, the table will not be displayed. Then, "===" will
%not be in the string because the table is like the next example:
%Nombre de imagen               PID Nombre de sesi¢n N£m. de ses Uso de memor
%========================= ======== ================ =========== ============
%CameraControlInterface.ex    14056 Console                    1    16.264 KB

[n1,n2,n3,n4] = regexp(result,[processName,'\s*(\S*)'],'ignorecase');


pid = 0;
if (~isempty(n3))
    pid = result(n3{1,1}(1):n3{1,1}(2));
end
