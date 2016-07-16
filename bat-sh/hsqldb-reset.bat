cd ../src/database/scripts

echo 'New Run' >> hsqldb.log
echo %date% %time% >> hsqldb.log

echo 'EMS SCHEMA Droped.'
java -jar ../sqltool.jar localhost-sa drop.sql >> hsqldb.log
echo 'EMS SCHEMA Created.'
java -jar ../sqltool.jar localhost-sa create.sql >> hsqldb.log
echo 'EMS Default Entities Inserted.'
java -jar ../sqltool.jar localhost-sa insert_entities.sql >> hsqldb.log
cd ../../../bat-sh