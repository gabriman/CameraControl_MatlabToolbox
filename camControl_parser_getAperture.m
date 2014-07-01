function [ value ] = camControl_parser_getAperture( commands )
%CAMCONTROL_PARSER_GETAPERTURE Extrae la apertura de la salida de los 
%comandos
% Analiza las respuestas de lasordenes previamente ejecutadas y obtiene 
% el valor de la sensibilidad ISO cuando se ha solicitado la obtención del valor de
% dicho parámetro previamente.
% Por ejemplo, si antes se ha solicitado el valor de la apertura, luego se
% ha cambiado y luego se ha vuelto a obtener, devolvera el nuevo valor.
%
% @param commands son las respuestas generadas al ejecutar previamente un conjunto
% deórdenes.
% @return value es el ultimo valor solicitado del parametro al que 
% corresponda la función.

value = -1;

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if strcmp(commands(i).command,'get') && strcmp(commands(i).parameter,'APERTURE')
        if strcmp(commands(i).code,'0')
            value = char(commands(i).message);
            break
        end
    end
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