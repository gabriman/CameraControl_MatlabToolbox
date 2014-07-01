function [ code, message, command, parameter ] = camControl_parser_getLastError( commands )
%CAMCONTRO_PARSER_GETLASTERROR Obtiene el último error después de una
%ejecución de comandos
% Analiza las respuestas de las ordenes previamente ejecutadas y obtiene 
% los campos de la ultima orden que ha producido un código de error.
% @param commands son las respuestas generadas al ejecutar previamente 
% un conjunto de órdenes.
%
% @return code es el codigo de salida de la orden.
% @return message es el mensaje de salida de la orden.
% @return command es el comando al que corresponde la orden (get, set o 
% action)
% @return parameter es el parametro al que se refiere la orden (aperture, 
% speed, iso, take,...)

code = '0';
message = '';
command = '';
parameter = '';

for i=fliplr(1:size(commands,2)),       %Start searching for the end
    if str2num(commands(i).code)<0
        code = commands(i).code;
        message = commands(i).message;
        command = commands(i).command;
        parameter = commands(i).parameter;
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