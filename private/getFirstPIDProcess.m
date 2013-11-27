%
%Copyright 2013 Gabriel Rodríguez Rodríguez.
%
%This program is free software: you can redistribute it and/or modify
%it under the terms of the GNU General Public License as published by
%the Free Software Foundation, either version 3 of the License, or
%(at your option) any later version.
%
%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%GNU General Public License for more details.
%
%You should have received a copy of the GNU General Public License
%along with this program. If not, see <http://www.gnu.org/licenses/>.

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
