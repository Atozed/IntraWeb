set brcc="C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\brcc32.exe"

%brcc% template_resources.rc -fotemplate_resource.res 1>>build.log 2>>build-err.log

copy template_resource.res .. /y