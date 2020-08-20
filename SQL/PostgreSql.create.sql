




CREATE TABLE Поставщик (

 primaryKey UUID NOT NULL,

 ИНН VARCHAR(255) NULL,

 Наименование VARCHAR(255) NULL,

 РасчетныйСчет INT NULL,

 Описание VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE УК (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ВидУслуги (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 Ресурс VARCHAR(255) NULL,

 Актуальность BOOLEAN NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Собственник (

 primaryKey UUID NOT NULL,

 ФИО VARCHAR(255) NULL,

 идТелеПлюс INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Тариф (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 Описание VARCHAR(255) NULL,

 ДатаНачала TIMESTAMP(3) NULL,

 ДатаОкон TIMESTAMP(3) NULL,

 Единица VARCHAR(255) NULL,

 Формула VARCHAR(255) NULL,

 Стоимость VARCHAR(255) NULL,

 ВидУслуги_m0 UUID NOT NULL,

 Поставщик_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ПоказаниеПУ (

 primaryKey UUID NOT NULL,

 Значение INT NULL,

 Дата TIMESTAMP(3) NULL,

 ПолученоАвто BOOLEAN NULL,

 ПриборУчета_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Помещение (

 primaryKey UUID NOT NULL,

 Площадь INT NULL,

 ТипПомещения VARCHAR(255) NULL,

 Колвопр VARCHAR(255) NULL,

 Дом_m0 UUID NOT NULL,

 Собственник_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Дом (

 primaryKey UUID NOT NULL,

 Address VARCHAR(255) NULL,

 summS INT NULL,

 УК_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE МодельПУ (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 Производитель VARCHAR(255) NULL,

 Актуальность BOOLEAN NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Сотрудник (

 primaryKey UUID NOT NULL,

 ФИО VARCHAR(255) NULL,

 УК_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE УправляющаяКомпания (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 ИНН VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ДомПоставщик (

 primaryKey UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ПриборУчета (

 primaryKey UUID NOT NULL,

 Единица VARCHAR(255) NULL,

 ДатаУстановки TIMESTAMP(3) NULL,

 ДатаСнятия TIMESTAMP(3) NULL,

 Актуальность BOOLEAN NULL,

 АвтоПередача BOOLEAN NULL,

 МодельПУ_m0 UUID NOT NULL,

 Помещение_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE АдресныйРеестр (

 primaryKey UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Квитанция (

 primaryKey UUID NOT NULL,

 Дата TIMESTAMP(3) NULL,

 idTelePlus INT NULL,

 Итого VARCHAR(255) NULL,

 Помещение_m0 UUID NOT NULL,

 УК_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE СтрокаКвитанции (

 primaryKey UUID NOT NULL,

 Расход INT NULL,

 Единица VARCHAR(255) NULL,

 Сумма INT NULL,

 Расшифровка VARCHAR(255) NULL,

 Комментарий VARCHAR(255) NULL,

 ПоказаниеПУ_m0 UUID NOT NULL,

 Тариф_m0 UUID NOT NULL,

 Квитанция_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE Тариф ADD CONSTRAINT FK3b92887870af49c6bd3f76e81a39b723 FOREIGN KEY (ВидУслуги_m0) REFERENCES ВидУслуги; 
CREATE INDEX Index4efe9f21f1565b469b033b23b22cc953d6c41527 on Тариф (ВидУслуги_m0); 

 ALTER TABLE Тариф ADD CONSTRAINT FK5284eadc4cd24c39857a3fc42cb703d1 FOREIGN KEY (Поставщик_m0) REFERENCES Поставщик; 
CREATE INDEX Index33c10eeb7288c970ebdf38051c0eb48f55cb7bff on Тариф (Поставщик_m0); 

 ALTER TABLE ПоказаниеПУ ADD CONSTRAINT FK225b56a9ed704b01bb99132dfb9a665e FOREIGN KEY (ПриборУчета_m0) REFERENCES ПриборУчета; 
CREATE INDEX Indexd6cce9d38823a1c432711a50b19373503b5d68d2 on ПоказаниеПУ (ПриборУчета_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FKbc636586374d40478e2c11c1e308fa87 FOREIGN KEY (Дом_m0) REFERENCES Дом; 
CREATE INDEX Indexf97e664ca029e850560b5496b12896dde2455ab2 on Помещение (Дом_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FKe169b1adadeb4d01a06282cebb0ba309 FOREIGN KEY (Собственник_m0) REFERENCES Собственник; 
CREATE INDEX Index88ae7359508e1b0f29ac3d6391b1ada245fdbe20 on Помещение (Собственник_m0); 

 ALTER TABLE Дом ADD CONSTRAINT FK59bbdf7ffa2f456c813446dd2b435f4b FOREIGN KEY (УК_m0) REFERENCES УК; 
CREATE INDEX Index605231f1bbb1bfd84460c01be113da41b55848f9 on Дом (УК_m0); 

 ALTER TABLE Сотрудник ADD CONSTRAINT FKd566ab50bafa44db96c5b5cce83389c8 FOREIGN KEY (УК_m0) REFERENCES УК; 
CREATE INDEX Index52edb5711edba52ad018470c6854ee552936f900 on Сотрудник (УК_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FK41549c0c33f145afb28e13106e4e2af0 FOREIGN KEY (МодельПУ_m0) REFERENCES МодельПУ; 
CREATE INDEX Index0b5e9eb2d31d78044e491bbfb1691aef8746951a on ПриборУчета (МодельПУ_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FK67c8aefca2ee44cc8190939408819deb FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index03e59a2c17a211fa9af9bb9fd79463203fcd2558 on ПриборУчета (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FK58761d644ea547faafe1bd9e94d43251 FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index3b2475a1dea2a575569bb051ca87c1ad7c239647 on Квитанция (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FK7197524f8bd0487784e5d61dd9f5fdbb FOREIGN KEY (УК_m0) REFERENCES УК; 
CREATE INDEX Index3f0fbd2cd5b96d41bdd2a729a9ae1e0c074df4b0 on Квитанция (УК_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FKe5d9c9a750e54452a0f99eadd0740a1b FOREIGN KEY (ПоказаниеПУ_m0) REFERENCES ПоказаниеПУ; 
CREATE INDEX Index3b33ecdbea4a900de7aae2210c993278d855a0d8 on СтрокаКвитанции (ПоказаниеПУ_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK89fa96029fb94425b44194f2e2795724 FOREIGN KEY (Тариф_m0) REFERENCES Тариф; 
CREATE INDEX Index703ba542e585241f1ff80d29061fe379b2308d1f on СтрокаКвитанции (Тариф_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK3fa3e176ae464af38698ce96776575f3 FOREIGN KEY (Квитанция_m0) REFERENCES Квитанция; 
CREATE INDEX Indexce88417d4864090c9df2be074537be19db2fb5a7 on СтрокаКвитанции (Квитанция_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK6008bcb2573641178df932857d825c96 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKb2a2c25e52704cf381b107ac312b501d FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK9bc2459a36f3409b9ec972e93def0a2d FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

