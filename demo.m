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

programFolder = uigetdir;
[options,XMLobj] = camControl_init(programFolder);
pause(2)
camControl_changeTargetPhotos(XMLobj,'host','C:\Users\Gabry\Desktop\photosCanon');
camControl_changeSpeed(XMLobj,'1/100');
camControl_changeAperture(XMLobj,'3.5');
camControl_changeIso(XMLobj,'800');
camControl_getIso(XMLobj);

camControl_take(XMLobj);
%camControl_close(XMLobj);
[XMLobj commands] = camControl_execute(options,XMLobj);