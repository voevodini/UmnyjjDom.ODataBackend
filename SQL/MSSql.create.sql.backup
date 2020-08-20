



CREATE TABLE [Поставщик] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ИНН] VARCHAR(255)  NULL,

	 [Наименование] VARCHAR(255)  NULL,

	 [РасчетныйСчет] INT  NULL,

	 [Описание] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ВидУслуги] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Наименование] VARCHAR(255)  NULL,

	 [Ресурс] VARCHAR(255)  NULL,

	 [Актуальность] BIT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Собственник] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ФИО] VARCHAR(255)  NULL,

	 [идТелеПлюс] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Тариф] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Наименование] VARCHAR(255)  NULL,

	 [Описание] VARCHAR(255)  NULL,

	 [ДатаНачала] DATETIME  NULL,

	 [ДатаОкончания] DATETIME  NULL,

	 [Единица] VARCHAR(255)  NULL,

	 [Формула] VARCHAR(255)  NULL,

	 [Стоимость] VARCHAR(255)  NULL,

	 [ВидУслуги_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Поставщик_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ПоказаниеПУ] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Значение] INT  NULL,

	 [Дата] DATETIME  NULL,

	 [ПолученоАвтоматически] BIT  NULL,

	 [ПриборУчета_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Помещение] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Площадь] INT  NULL,

	 [ТипПомещения] VARCHAR(255)  NULL,

	 [КолвоПроживающих] VARCHAR(255)  NULL,

	 [Дом_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Собственник_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Дом] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Address] VARCHAR(255)  NULL,

	 [summS] INT  NULL,

	 [УправляющаяКомпания_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [МодельПУ] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Наименование] VARCHAR(255)  NULL,

	 [Производитель] VARCHAR(255)  NULL,

	 [Актуальность] BIT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Сотрудник] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ФИО] VARCHAR(255)  NULL,

	 [УправляющаяКомпания_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [УправляющаяКомпания] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Наименование] VARCHAR(255)  NULL,

	 [ИНН] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ДомПоставщик] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ПриборУчета] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Единица] VARCHAR(255)  NULL,

	 [ДатаУстановки] DATETIME  NULL,

	 [ДатаСнятия] DATETIME  NULL,

	 [Актуальность] BIT  NULL,

	 [АвтоматическаяПередача] BIT  NULL,

	 [МодельПУ_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Помещение_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [АдресныйРеестр] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Квитанция] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Дата] DATETIME  NULL,

	 [idTelePlus] INT  NULL,

	 [Итого] VARCHAR(255)  NULL,

	 [Помещение_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [УправляющаяКомпания_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [СтрокаКвитанции] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Расход] INT  NULL,

	 [Единица] VARCHAR(255)  NULL,

	 [Сумма] INT  NULL,

	 [Расшифровка] VARCHAR(255)  NULL,

	 [Комментарий] VARCHAR(255)  NULL,

	 [ПоказаниеПУ_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Тариф_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [Квитанция_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [Тариф] ADD CONSTRAINT [Тариф_FВидУслуги_0] FOREIGN KEY ([ВидУслуги_m0]) REFERENCES [ВидУслуги]
CREATE INDEX Тариф_IВидУслуги_m0 on [Тариф] ([ВидУслуги_m0])

 ALTER TABLE [Тариф] ADD CONSTRAINT [Тариф_FПоставщик_0] FOREIGN KEY ([Поставщик_m0]) REFERENCES [Поставщик]
CREATE INDEX Тариф_IПоставщик_m0 on [Тариф] ([Поставщик_m0])

 ALTER TABLE [ПоказаниеПУ] ADD CONSTRAINT [ПоказаниеПУ_FПриборУчета_0] FOREIGN KEY ([ПриборУчета_m0]) REFERENCES [ПриборУчета]
CREATE INDEX ПоказаниеПУ_IПриборУчета_m0 on [ПоказаниеПУ] ([ПриборУчета_m0])

 ALTER TABLE [Помещение] ADD CONSTRAINT [Помещение_FДом_0] FOREIGN KEY ([Дом_m0]) REFERENCES [Дом]
CREATE INDEX Помещение_IДом_m0 on [Помещение] ([Дом_m0])

 ALTER TABLE [Помещение] ADD CONSTRAINT [Помещение_FСобственник_0] FOREIGN KEY ([Собственник_m0]) REFERENCES [Собственник]
CREATE INDEX Помещение_IСобственник_m0 on [Помещение] ([Собственник_m0])

 ALTER TABLE [Дом] ADD CONSTRAINT [Дом_FУправляющаяКомпания_0] FOREIGN KEY ([УправляющаяКомпания_m0]) REFERENCES [УправляющаяКомпания]
CREATE INDEX Дом_IУправляющаяКомпания_m0 on [Дом] ([УправляющаяКомпания_m0])

 ALTER TABLE [Сотрудник] ADD CONSTRAINT [Сотрудник_FУправляющаяКомпания_0] FOREIGN KEY ([УправляющаяКомпания_m0]) REFERENCES [УправляющаяКомпания]
CREATE INDEX Сотрудник_IУправляющаяКомпания_m0 on [Сотрудник] ([УправляющаяКомпания_m0])

 ALTER TABLE [ПриборУчета] ADD CONSTRAINT [ПриборУчета_FМодельПУ_0] FOREIGN KEY ([МодельПУ_m0]) REFERENCES [МодельПУ]
CREATE INDEX ПриборУчета_IМодельПУ_m0 on [ПриборУчета] ([МодельПУ_m0])

 ALTER TABLE [ПриборУчета] ADD CONSTRAINT [ПриборУчета_FПомещение_0] FOREIGN KEY ([Помещение_m0]) REFERENCES [Помещение]
CREATE INDEX ПриборУчета_IПомещение_m0 on [ПриборУчета] ([Помещение_m0])

 ALTER TABLE [Квитанция] ADD CONSTRAINT [Квитанция_FПомещение_0] FOREIGN KEY ([Помещение_m0]) REFERENCES [Помещение]
CREATE INDEX Квитанция_IПомещение_m0 on [Квитанция] ([Помещение_m0])

 ALTER TABLE [Квитанция] ADD CONSTRAINT [Квитанция_FУправляющаяКомпания_0] FOREIGN KEY ([УправляющаяКомпания_m0]) REFERENCES [УправляющаяКомпания]
CREATE INDEX Квитанция_IУправляющаяКомпания_m0 on [Квитанция] ([УправляющаяКомпания_m0])

 ALTER TABLE [СтрокаКвитанции] ADD CONSTRAINT [СтрокаКвитанции_FПоказаниеПУ_0] FOREIGN KEY ([ПоказаниеПУ_m0]) REFERENCES [ПоказаниеПУ]
CREATE INDEX СтрокаКвитанции_IПоказаниеПУ_m0 on [СтрокаКвитанции] ([ПоказаниеПУ_m0])

 ALTER TABLE [СтрокаКвитанции] ADD CONSTRAINT [СтрокаКвитанции_FТариф_0] FOREIGN KEY ([Тариф_m0]) REFERENCES [Тариф]
CREATE INDEX СтрокаКвитанции_IТариф_m0 on [СтрокаКвитанции] ([Тариф_m0])

 ALTER TABLE [СтрокаКвитанции] ADD CONSTRAINT [СтрокаКвитанции_FКвитанция_0] FOREIGN KEY ([Квитанция_m0]) REFERENCES [Квитанция]
CREATE INDEX СтрокаКвитанции_IКвитанция_m0 on [СтрокаКвитанции] ([Квитанция_m0])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

