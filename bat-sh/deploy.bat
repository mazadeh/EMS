if not exist "%CATALINA_HOME%" (
	echo "The environment variable CATALINA_HOME must be set to the root of the Tomcat installation directory"
) else (
	set "APP_CONTEXT=ems"
	copy ..\target\%APP_CONTEXT%.war %CATALINA_HOME%\webapps\%APP_CONTEXT%.war
)