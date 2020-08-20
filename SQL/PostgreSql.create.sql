




CREATE TABLE Поставщик (

 primaryKey UUID NOT NULL,

 ИНН VARCHAR(255) NULL,

 Наименование VARCHAR(255) NULL,

 РасчетныйСчет INT NULL,

 Описание VARCHAR(255) NULL,

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

 УправляющаяКомпания_m0 UUID NOT NULL,

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

 УправляющаяКомпания_m0 UUID NOT NULL,

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

 УправляющаяКомпания_m0 UUID NOT NULL,

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




 ALTER TABLE Тариф ADD CONSTRAINT FK01a1c38ad0584ae185b1f400ded3b866 FOREIGN KEY (ВидУслуги_m0) REFERENCES ВидУслуги; 
CREATE INDEX Index4efe9f21f1565b469b033b23b22cc953d6c41527 on Тариф (ВидУслуги_m0); 

 ALTER TABLE Тариф ADD CONSTRAINT FK3328859613b74ab7a9ef37eebe5881fe FOREIGN KEY (Поставщик_m0) REFERENCES Поставщик; 
CREATE INDEX Index33c10eeb7288c970ebdf38051c0eb48f55cb7bff on Тариф (Поставщик_m0); 

 ALTER TABLE ПоказаниеПУ ADD CONSTRAINT FKcc8bd4fcb07d4a16bfa74cf616f6a795 FOREIGN KEY (ПриборУчета_m0) REFERENCES ПриборУчета; 
CREATE INDEX Indexd6cce9d38823a1c432711a50b19373503b5d68d2 on ПоказаниеПУ (ПриборУчета_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FK5fd143632d29494287e71af573114ab9 FOREIGN KEY (Дом_m0) REFERENCES Дом; 
CREATE INDEX Indexf97e664ca029e850560b5496b12896dde2455ab2 on Помещение (Дом_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FKacbb0e261bce4228bf829747cb51e50b FOREIGN KEY (Собственник_m0) REFERENCES Собственник; 
CREATE INDEX Index88ae7359508e1b0f29ac3d6391b1ada245fdbe20 on Помещение (Собственник_m0); 

 ALTER TABLE Дом ADD CONSTRAINT FK85109a2cc42e4ed8a50858a44ffa7fd3 FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Index8cc613dc87087d9dacaeec621207a2e90de170f1 on Дом (УправляющаяКомпания_m0); 

 ALTER TABLE Сотрудник ADD CONSTRAINT FKcc4e26cf01e641c19918e8db376ef55d FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Indexf69f79f9f32939c432502ebf4f1d9ff00132ef66 on Сотрудник (УправляющаяКомпания_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FKa82565d285e04d4f9830f33d6ef56439 FOREIGN KEY (МодельПУ_m0) REFERENCES МодельПУ; 
CREATE INDEX Index0b5e9eb2d31d78044e491bbfb1691aef8746951a on ПриборУчета (МодельПУ_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FKfb6d118e2e8e4e66bfb42da1b1c69f8c FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index03e59a2c17a211fa9af9bb9fd79463203fcd2558 on ПриборУчета (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FK6372c88cc67e4d2d86a4f1beac194fd6 FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index3b2475a1dea2a575569bb051ca87c1ad7c239647 on Квитанция (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FKd812e1d9ec414235a23e1f0d85622d5a FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Index8a726da6bb6ef494f0c35f58a7ff42b4efbb9625 on Квитанция (УправляющаяКомпания_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FKd212dae8fbcb485db08701f77b2ff82a FOREIGN KEY (ПоказаниеПУ_m0) REFERENCES ПоказаниеПУ; 
CREATE INDEX Index3b33ecdbea4a900de7aae2210c993278d855a0d8 on СтрокаКвитанции (ПоказаниеПУ_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK95db21c0e1a84b30aad7a88c0a5098aa FOREIGN KEY (Тариф_m0) REFERENCES Тариф; 
CREATE INDEX Index703ba542e585241f1ff80d29061fe379b2308d1f on СтрокаКвитанции (Тариф_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK17b6cb868c2c40b2a8df2587eb1d9870 FOREIGN KEY (Квитанция_m0) REFERENCES Квитанция; 
CREATE INDEX Indexce88417d4864090c9df2be074537be19db2fb5a7 on СтрокаКвитанции (Квитанция_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKdf533b0f0d9b4cc88feacdc24b1bc02d FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKd8f6ee5979cb4b3fb975cc35a72c1361 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKbde2e6f122354eea84ac64d6be1426d5 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

