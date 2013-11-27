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