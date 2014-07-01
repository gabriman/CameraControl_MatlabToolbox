function [ XMLobj,commands] = camControl_execute( options, XMLobj )
%CAMCONTROL_EXECUTE Ejectura el programa de interfaz 
% Inicia el programa interfaz para comenzar la ejecuci�n del toolbox.
% Esta llamada es siempre necesaria para iniciar ya que sin ella
% la escritura en los ficheros a trav�s de los comandos no tendr�an
% una respuesta. 
% Una vez lanzado el programa, este se quedar� esperando monitorizando
% cambios en los ficheros de entrada. Si ya se est� ejecutando alg�n
% proceso con el programa, este se cerrar� para abrir este.
%
% @param XMLobj es el objeto XML al que se agregara la orden.
% @return -

pathOut = [options('programFolder') '\' char(options('directoryOut')) '\' char(options('fileOut'))];
oldTimeOutFile = dir(pathOut);

path = [char(options('programFolder')) '\' char(options('directoryIn')) '\' char(options('fileIn'))];
xmlwrite(path,XMLobj)
XMLobj = createXMLobj();

newTimeOutFile = dir(pathOut);
while oldTimeOutFile.date==newTimeOutFile.date
    %fprintf('a\n')
    newTimeOutFile = dir(pathOut);
end

commands = readReturnFile(options);



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