function [ code,message ] = camControl_validateInit(options)
%CAMCONTROL_INITCHECK Obtiene la salida del fichero de salida
% Obtiene la salida del fichero de salida después de llamar camControl_init
% 
% @param options es una estructura que contiene los valores del archivo de 
% configuración de CameraControlInterface.
% @return code es el código de salida generado en el inicio de la camara.
% @return message es el mensaje generado en la inicialización. 
% Si se ha iniciado correctamente alguna cámara, contendrá la cámara que se
% ha iniciado. En caso contrario, contiene el mensaje de error.

[code,message] = readInitReturnFile(options);



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