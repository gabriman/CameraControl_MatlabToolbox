function [options,XMLobj] = camControl_Init( programFolder  )
%CAMCONTROL_INIT Inicia el programa 
% Inicia el programa de interface y la primera cámara que detecte 
% disponible. Es necesario  especificar la ruta del directorio de 
% CameraControlInterface. También lee el archivo de configuración y 
% devuelve los valores obtenidos.
%
% @param programFolder es la ruta del directorio del programa 
% CameraControlInterface.
% @return options es una estructura que contiene los valores del archivo 
% de configuración de CameraControlInterface.
% @return XMLobj es un nuevo objeto XML vaco para añadirle ordenes y 
% posteriormente ejecutarlas.

options = readConfFile(programFolder);
exe = char(options('executable'));

%Close any process before
[pathstr,name,ext] = fileparts(exe);
[name,ext]
killProcessByName([name,ext]);
%

command = ['start ' programFolder '\' exe];     % Not "/b" for work correctly
system(command)

XMLobj = createXMLobj();

end



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