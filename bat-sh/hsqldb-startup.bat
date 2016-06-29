cd ../src/database

if exist "data-log" (
        echo Database exists
    ) else (
        echo Database created
		mkdir "data-log"
    )
cd data-log
echo 'New Run' >> hsqldb.log
echo %date% %time% >> hsqldb.log
echo 'Server is running in the background...'
java -cp ../hsqldb.jar org.hsqldb.server.Server >> hsqldb.log
cd ../../../bat-sh