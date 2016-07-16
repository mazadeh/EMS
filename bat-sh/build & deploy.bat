cd ..
if exist "target" (
	rmdir /s /q target
)
mvn tomcat7:redeploy