cd ..
if exist "target" (
	rmdir /s /q target
)
mvn package