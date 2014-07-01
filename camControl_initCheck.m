function [ code,message ] = camControl_validateInit(options)
%CAMCONTROL_INITCHECK Obtiene la salida del fichero de salida
% Obtiene la salida del fichero de salida despu�s de llamar camControl_init
% 
% @param options es una estructura que contiene los valores del archivo de 
% configuraci�n de CameraControlInterface.
% @return code es el c�digo de salida generado en el inicio de la camara.
% @return message es el mensaje generado en la inicializaci�n. 
% Si se ha iniciado correctamente alguna c�mara, contendr� la c�mara que se
% ha iniciado. En caso contrario, contiene el mensaje de error.

[code,message] = readInitReturnFile(options);



end



%
%Copyright 2013 Gabriel Rodr�guez Rodr�guez.
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