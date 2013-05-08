[options,XMLobj] = camControl_Init;
pause(2)
camControl_changeSpeed(XMLobj,'1/200');
camControl_changeAperture(XMLobj,'7.1');
camControl_changeIso(XMLobj,'800');
camControl_take(XMLobj);
%camControl_close(XMLobj);
XMLobj = camControl_execute(options,XMLobj);
