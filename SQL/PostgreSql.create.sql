﻿




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

 ДатаОкончания TIMESTAMP(3) NULL,

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

 ПолученоАвтоматически BOOLEAN NULL,

 ПриборУчета_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ПомещениеСобственника (

 primaryKey UUID NOT NULL,

 ОсновнойСобственник VARCHAR(255) NULL,

 ДоляСобственности VARCHAR(255) NULL,

 Помещение_m0 UUID NOT NULL,

 Собственник_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Помещение (

 primaryKey UUID NOT NULL,

 Площадь INT NULL,

 ТипПомещения VARCHAR(255) NULL,

 КолвоПроживающих VARCHAR(255) NULL,

 Дом_m0 UUID NOT NULL,

 АдресныйРеестр_m0 UUID NOT NULL,

 Собственник_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Дом (

 primaryKey UUID NOT NULL,

 Address VARCHAR(255) NULL,

 summS INT NULL,

 УправляющаяКомпания_m0 UUID NOT NULL,

 АдресныйРеестр_m0 UUID NOT NULL,

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

 Дом_m0 UUID NOT NULL,

 Поставщик_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ПриборУчета (

 primaryKey UUID NOT NULL,

 Единица VARCHAR(255) NULL,

 ДатаУстановки TIMESTAMP(3) NULL,

 ДатаСнятия TIMESTAMP(3) NULL,

 Актуальность BOOLEAN NULL,

 АвтоматическаяПередача BOOLEAN NULL,

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




 ALTER TABLE Тариф ADD CONSTRAINT FKd096fbb2fc1d41ea9daf42da65441bf7 FOREIGN KEY (ВидУслуги_m0) REFERENCES ВидУслуги; 
CREATE INDEX Index4efe9f21f1565b469b033b23b22cc953d6c41527 on Тариф (ВидУслуги_m0); 

 ALTER TABLE Тариф ADD CONSTRAINT FK756237b8b8f5486aa7a216a5fcf0dbbd FOREIGN KEY (Поставщик_m0) REFERENCES Поставщик; 
CREATE INDEX Index33c10eeb7288c970ebdf38051c0eb48f55cb7bff on Тариф (Поставщик_m0); 

 ALTER TABLE ПоказаниеПУ ADD CONSTRAINT FK2da871d21acb4708ac5ebfebfa60c28e FOREIGN KEY (ПриборУчета_m0) REFERENCES ПриборУчета; 
CREATE INDEX Indexd6cce9d38823a1c432711a50b19373503b5d68d2 on ПоказаниеПУ (ПриборУчета_m0); 

 ALTER TABLE ПомещениеСобственника ADD CONSTRAINT FK9fa6a58807394f9c80e23c5a0f3b1eb6 FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index61299f76ff53ff3270ca002f2a3d3427da2213a8 on ПомещениеСобственника (Помещение_m0); 

 ALTER TABLE ПомещениеСобственника ADD CONSTRAINT FK72009537584b4f32a0dc7169a7ee225a FOREIGN KEY (Собственник_m0) REFERENCES Собственник; 
CREATE INDEX Index0fe3d46f06fe93ab18c33cae122a904d334f71c3 on ПомещениеСобственника (Собственник_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FKa3755910fd614e5a97f5891c8a20ace4 FOREIGN KEY (Дом_m0) REFERENCES Дом; 
CREATE INDEX Indexf97e664ca029e850560b5496b12896dde2455ab2 on Помещение (Дом_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FK5767bda56ae0420f803ee456b299e359 FOREIGN KEY (АдресныйРеестр_m0) REFERENCES АдресныйРеестр; 
CREATE INDEX Indexfe72dfb9a9ea657d02bd301b6c7deb9364f43144 on Помещение (АдресныйРеестр_m0); 

 ALTER TABLE Помещение ADD CONSTRAINT FK4b84943620b3468abbed6b3a2e3a5f00 FOREIGN KEY (Собственник_m0) REFERENCES Собственник; 
CREATE INDEX Index88ae7359508e1b0f29ac3d6391b1ada245fdbe20 on Помещение (Собственник_m0); 

 ALTER TABLE Дом ADD CONSTRAINT FKad5d899bc6ef48d0a4ff16e65d331673 FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Index8cc613dc87087d9dacaeec621207a2e90de170f1 on Дом (УправляющаяКомпания_m0); 

 ALTER TABLE Дом ADD CONSTRAINT FK33878f560e2c4fe38c88b35b904524da FOREIGN KEY (АдресныйРеестр_m0) REFERENCES АдресныйРеестр; 
CREATE INDEX Index849aee09df438a952692e001c656b0d98898d9d4 on Дом (АдресныйРеестр_m0); 

 ALTER TABLE Сотрудник ADD CONSTRAINT FK5c19d1cc05d9454a9e35e9bb4ed1253a FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Indexf69f79f9f32939c432502ebf4f1d9ff00132ef66 on Сотрудник (УправляющаяКомпания_m0); 

 ALTER TABLE ДомПоставщик ADD CONSTRAINT FK43b0ab02d6004ab9abf8b048e7b8eda0 FOREIGN KEY (Дом_m0) REFERENCES Дом; 
CREATE INDEX Index395527b359b8a755046b8085885e36bc7ea4772a on ДомПоставщик (Дом_m0); 

 ALTER TABLE ДомПоставщик ADD CONSTRAINT FK99b29baa7de648c7b84812866a020027 FOREIGN KEY (Поставщик_m0) REFERENCES Поставщик; 
CREATE INDEX Index474328d8c86a68c4ecc2cdcbcb507d7272335bb7 on ДомПоставщик (Поставщик_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FK9edfeea1d1a9480b92333d032bed8b11 FOREIGN KEY (МодельПУ_m0) REFERENCES МодельПУ; 
CREATE INDEX Index0b5e9eb2d31d78044e491bbfb1691aef8746951a on ПриборУчета (МодельПУ_m0); 

 ALTER TABLE ПриборУчета ADD CONSTRAINT FK6727b26bcf2845ef8a362dab44e7583b FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index03e59a2c17a211fa9af9bb9fd79463203fcd2558 on ПриборУчета (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FKc83fdf5bced040e5870213db46f7ec4e FOREIGN KEY (Помещение_m0) REFERENCES Помещение; 
CREATE INDEX Index3b2475a1dea2a575569bb051ca87c1ad7c239647 on Квитанция (Помещение_m0); 

 ALTER TABLE Квитанция ADD CONSTRAINT FK44d0a5b808c448b18c31a10cf2f04145 FOREIGN KEY (УправляющаяКомпания_m0) REFERENCES УправляющаяКомпания; 
CREATE INDEX Index8a726da6bb6ef494f0c35f58a7ff42b4efbb9625 on Квитанция (УправляющаяКомпания_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK1abd92e555274064a1f26a95db442085 FOREIGN KEY (ПоказаниеПУ_m0) REFERENCES ПоказаниеПУ; 
CREATE INDEX Index3b33ecdbea4a900de7aae2210c993278d855a0d8 on СтрокаКвитанции (ПоказаниеПУ_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK31d1e66babee43a2b81b3cd84fe8c19f FOREIGN KEY (Тариф_m0) REFERENCES Тариф; 
CREATE INDEX Index703ba542e585241f1ff80d29061fe379b2308d1f on СтрокаКвитанции (Тариф_m0); 

 ALTER TABLE СтрокаКвитанции ADD CONSTRAINT FK1e9bcd02efa14187b9c5558e8217b905 FOREIGN KEY (Квитанция_m0) REFERENCES Квитанция; 
CREATE INDEX Indexce88417d4864090c9df2be074537be19db2fb5a7 on СтрокаКвитанции (Квитанция_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK2f089981797545d69dda3016e24637d7 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK1fc221d003164423b73a6bd3c05fd4e0 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK068e2a882e944d2fb4c15e92b73a484f FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

