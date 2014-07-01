function [ value ] = camControl_parser_getListSpeedString( commands )
%CAMCONTROL_PARSER_GETLISTSPEEDSTRING Extrae la lista de velocidades de la 
%salida de los comandos
% Analiza las respuestas de las ordenes previamente ejecutadas y obtiene 
% la lista de valores disponibles para el parámetro previamente solicitado 
% proporcionando la lista en forma de una sola cadena separando los 
% valores por puntos y coma.
%
% @param commands son las respuestas generadas al ejecutar previamente un 
% conjunto de órdenes.
% @return value es la lista de valores disponibles del parámetro al que 
% corresponda la función 

value = -1;

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if strcmp(commands(i).command,'getlist') && strcmp(commands(i).parameter,'SPEED')
        if strcmp(commands(i).code,'0')
            value = commands(i).message;
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