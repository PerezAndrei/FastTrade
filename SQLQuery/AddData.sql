
--Truncate Table Ads;
DBCC CHECKIDENT (Ads, RESEED,0);

-- Заполнение регионов
INSERT INTO Locations(LocationName)
VALUES(N'Минск');
INSERT INTO Locations(LocationName)
VALUES(N'Минская обл.');
INSERT INTO Locations(LocationName)
VALUES(N'Брестская обл.');
INSERT INTO Locations(LocationName)
VALUES(N'Витебская обл.');
INSERT INTO Locations(LocationName)
VALUES(N'Гомельская обл.');
INSERT INTO Locations(LocationName)
VALUES(N'Гродненская обл.');
INSERT INTO Locations(LocationName)
VALUES(N'Могилевская обл.');

-- Заполнение типов
INSERT INTO Kinds(Name)
VALUES(N'Продам');
INSERT INTO Kinds(Name)
VALUES(N'Куплю');
INSERT INTO Kinds(Name)
VALUES(N'Услуга');
INSERT INTO Kinds(Name)
VALUES(N'Обмен');

-- Заполнение категорий
Insert INTO Categories(Name)
VALUES (N'Техника');
Insert INTO Categories(Name)
VALUES (N'Все для дома');
Insert INTO Categories(Name)
VALUES (N'Авто. Мото');
Insert INTO Categories(Name)
VALUES (N'Строительство');
Insert INTO Categories(Name)
VALUES (N'Недвижимость');
Insert INTO Categories(Name)
VALUES (N'Одежда');
Insert INTO Categories(Name)
VALUES (N'Дом');
Insert INTO Categories(Name)
VALUES (N'Все для детей и мам');
Insert INTO Categories(Name)
VALUES (N'Спорт. Хобби. Туризм');
Insert INTO Categories(Name)
VALUES (N'Животные');
Insert INTO Categories(Name)
VALUES (N'Свадьба. Праздники');
Insert INTO Categories(Name)
VALUES (N'Сад. Огород');
Insert INTO Categories(Name)
VALUES (N'Разное');

-- Заполнение ролей
INSERT INTO Roles(RoleName)
VALUES('User');

INSERT INTO Roles(RoleName)
VALUES('Admin');

--Заполнение пользователей
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User1','User1','User1@mail.ru','19981106 00:00:00.000',2433765,'1',1,'20160201 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User2','User2','User2@mail.ru','19981105 00:00:00.000',2433765,'1',1,'20160202 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User3','User3','User3@mail.ru','19981113 00:00:00.000',2433765,'1',1,'20160203 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User4','User4','User4@mail.ru','19981122 00:00:00.000',2433765,'1',1,'20160204 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User5','User5','User5@mail.ru','19981017 00:00:00.000',2433765,'1',1,'20160205 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User6','User6','User6@mail.ru','19900922 00:00:00.000',2433765,'1',1,'20160206 00:00:00.000')

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User7','User7','User7@mail.ru','19890818 00:00:00.000',2777765,'1',1,'20160207 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User8','User8','User8@mail.ru','19750517 00:00:00.000',2654765,'1',1,'20160208 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User9','User9','User9@mail.ru','19740424 00:00:00.000',2789765,'1',1,'20160209 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User10','User6','User6@mail.ru','19730115 00:00:00.000',1113765,'1',1,'20160210 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User11','User11','User11@mail.ru','19950213 00:00:00.000',2258765,'1',1,'20160211 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User12','User12','User12@mail.ru','19870701 00:00:00.000',1243765,'1',1,'20160212 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User13','User13','User13@mail.ru','19820309 00:00:00.000',2433765,'1',1,'20160213 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User14','User14','User14@mail.ru','19880614 00:00:00.000',2433333,'1',1,'20160214 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User15','User15','User15@mail.ru','19890815 00:00:00.000',7893765,'1',1,'20160215 00:00:00.000') 

INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User16','User16','User16@mail.ru','19990414 00:00:00.000',2563765,'1',1,'20160216 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User17','User17','User17@mail.ru','19960624 00:00:00.000',2433765,'1',1,'20160217 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User18','User18','User18@mail.ru','19940726 00:00:00.000',7893765,'1',1,'20160218 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User19','User19','User19@mail.ru','19920822 00:00:00.000',7153765,'1',1,'20160219 00:00:00.000')
 
INSERT INTO Users(FirstName,LastName,Email,BirthDay,Phone,Password,RoleId,DateReg)
VALUES('User20','User20','User20@mail.ru','19900411 00:00:00.000',3333765,'1',1,'20160220 00:00:00.000') 
--
--
--
-- Заполнение объявлений
--
--User1
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12500,1,1,1,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,1,1,2,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',32500,1,1,3,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',442500,1,1,4,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',52500,1,1,5,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,1,1,6,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',72500,1,1,7,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',82500,1,1,8,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',92500,1,1,9,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',21500,1,1,10,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,1,1,11,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',23500,1,1,12,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',24500,1,1,13,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,1,2,1,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',26500,1,2,2,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',27500,1,2,3,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',28500,1,2,4,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',29500,1,2,5,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',210500,1,2,6,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,1,2,7,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25100,1,2,8,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25200,1,2,9,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25300,1,2,10,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25400,1,2,11,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,1,2,12,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25600,1,2,13,'20160226 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25700,1,3,1,'20160227 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25800,1,3,2,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25900,1,3,3,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',251000,1,3,4,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',11500,1,3,5,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',12500,1,3,6,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',13500,1,3,7,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',14500,1,3,8,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',15500,1,3,9,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2100,1,3,10,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2200,1,3,11,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2300,1,3,12,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2400,1,3,13,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,1,4,1,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2600,1,4,2,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2700,1,4,3,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800,1,4,4,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2900,1,4,5,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',21000,1,4,6,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1100,1,4,7,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25010,1,4,8,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25020,1,4,9,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25030,1,4,10,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25040,1,4,11,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25050,1,4,12,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25060,1,4,13,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');

--User2
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',25070,2,1,1,'20160226 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',25080,2,1,2,'20160227 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',25090,2,1,3,'20160228 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250100,2,1,4,'20160228 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250110,2,1,5,'20160201 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250120,2,1,6,'20160202 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250130,2,1,7,'20160203 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250140,2,1,8,'20160204 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250150,2,1,9,'20160205 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250160,2,1,10,'20160206 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250140,2,1,11,'20160207 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250170,2,1,12,'20160208 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',250180,2,1,13,'20160209 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250190,2,2,1,'20160210 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250200,2,2,2,'20160211 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250120,2,2,3,'20160212 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250220,2,2,4,'20160213 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250230,2,2,5,'20160214 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250240,2,2,6,'20160215 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',112500,2,2,7,'20160216 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',122500,2,2,8,'20160217 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',132500,2,2,9,'20160218 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',142500,2,2,10,'20160219 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',152500,2,2,11,'20160220 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',162500,2,2,12,'20160221 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',172500,2,2,13,'20160202 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',182500,2,3,1,'20160222 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',192500,2,3,2,'20160223 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',202500,2,3,3,'20160224 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',212500,2,3,4,'20160225 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',222500,2,3,5,'20160226 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',32500,2,3,6,'20160227 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',242500,2,3,7,'20160228 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',252500,2,3,8,'20160201 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',262500,2,3,9,'20160202 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',312500,2,3,10,'20160203 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',322500,2,3,11,'20160204 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',38252500,2,3,12,'20160205 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',372500,2,3,13,'20160206 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',392500,2,4,1,'20160207 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',402500,2,4,2,'20160208 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',412500,2,4,3,'20160209 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',422500,2,4,4,'20160210 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',432500,2,4,5,'20160211 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',442500,2,4,6,'20160212 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',462500,2,4,7,'20160213 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',452500,2,4,8,'20160214 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',462500,2,4,9,'20160215 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',512500,2,4,10,'20160216 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',522500,2,4,11,'20160217 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',532500,2,4,12,'20160218 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',542500,2,4,13,'20160219 00:00:00.000',2, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User3
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',552500,3,1,1,'20160220 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',562500,3,1,2,'20160221 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',572500,3,1,3,'20160222 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',582500,3,1,4,'20160223 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',592500,3,1,5,'20160224 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',602500,3,1,6,'20160225 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',612500,3,1,7,'20160226 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',262500,3,1,8,'20160201 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',622500,3,1,9,'20160202 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2650,3,1,10,'20160203 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2660,3,1,11,'20160204 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,3,1,12,'20160205 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2670,3,1,13,'20160206 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2680,3,2,1,'20160207 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2690,3,2,2,'20160208 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2300,3,2,3,'20160209 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2310,3,2,4,'20160210 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2320,3,2,5,'20160211 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2330,3,2,6,'20160212 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2340,3,2,7,'20160213 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2350,3,2,8,'20160214 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2360,3,2,9,'20160215 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2370,3,2,10,'20160216 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2380,3,2,11,'20160217 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2390,3,2,12,'20160218 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2400,3,2,13,'20160219 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2410,3,3,1,'20160220 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2420,3,3,2,'20160221 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2430,3,3,3,'20160222 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,3,3,4,'20160223 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2440,3,3,5,'20160224 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2450,3,3,6,'20160225 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,3,3,7,'20160226 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,3,3,8,'20160227 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,3,3,9,'20160201 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,3,3,10,'20160202 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',1450,3,3,11,'20160203 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',658,3,3,12,'20160204 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',780,3,3,13,'20160205 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',7700,3,4,1,'20160206 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',850,3,4,2,'20160207 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',8580,3,4,3,'20160208 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',28500,3,4,4,'20160209 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',78500,3,4,5,'20160210 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',45500,3,4,6,'20160211 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25560,3,4,7,'20160212 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',57500,3,4,8,'20160213 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,3,4,9,'20160214 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,3,4,10,'20160215 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,3,4,11,'20160216 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,3,4,12,'20160217 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,3,4,13,'20160218 00:00:00.000',3, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User4
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,1,'20160219 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,2,'20160220 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,3,'20160221 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,4,'20160222 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,5,'20160223 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,6,'20160224 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,7,'20160225 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,8,'20160226 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,9,'20160227 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,10,'20160228 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,11,'20160201 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,12,'20160202 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,4,1,13,'20160203 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,1,'20160204 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,2,'20160205 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,3,'20160206 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,4,'20160207 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,5,'20160208 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,6,'20160209 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,7,'20160210 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,8,'20160211 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,9,'20160212 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,10,'20160213 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,11,'20160214 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,12,'20160215 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,4,2,13,'20160216 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,1,'20160217 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,2,'20160218 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,3,'20160219 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,4,'20160220 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,5,'20160221 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,6,'20160222 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,7,'20160223 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,8,'20160224 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,9,'20160225 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,10,'20160226 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,11,'20160227 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,12,'20160228 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,4,3,13,'20160201 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,1,'20160202 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,2,'20160203 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,3,'20160204 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,4,'20160205 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,5,'20160206 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,6,'20160207 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,7,'20160208 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,8,'20160209 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,9,'20160210 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,10,'20160211 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,11,'20160212 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,12,'20160213 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,4,4,13,'20160214 00:00:00.000',4, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User5
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,1,'20160215 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,2,'20160216 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,3,'20160217 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,4,'20160218 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,5,'20160219 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,6,'20160220 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,7,'20160221 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,8,'20160222 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,9,'20160223 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,10,'20160224 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,11,'20160225 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,12,'20160226 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',2500,5,1,13,'20160227 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,1,'20160201 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,2,'20160202 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,3,'20160213 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,4,'20160203 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,5,'20160205 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,6,'20160204 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,7,'20160206 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,8,'20160207 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,9,'20160208 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,10,'20160209 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,11,'20160210 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,12,'20160211 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,5,2,13,'20160212 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,1,'20160213 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,2,'20160214 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,3,'20160215 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,4,'20160216 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,5,'20160217 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,6,'20160218 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,7,'20160219 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,8,'20160220 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,9,'20160221 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,10,'20160222 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,5,3,11,'20160223 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25450,5,3,12,'20160224 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',546300,5,3,13,'20160225 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',24500,5,4,1,'20160226 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',23200,5,4,2,'20160227 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',8680,5,4,3,'20160201 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',8700,5,4,4,'20160202 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',780,5,4,5,'20160203 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',27860,5,4,6,'20160204 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',97660,5,4,7,'20160205 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',79700,5,4,8,'20160206 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',4780,5,4,9,'20160207 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,5,4,10,'20160208 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',27500,5,4,11,'20160209 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,5,4,12,'20160210 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,5,4,13,'20160211 00:00:00.000',5, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User6
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',131500,6,1,1,'20160212 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',121500,6,1,2,'20160213 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',111500,6,1,3,'20160214 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',102500,6,1,4,'20160215 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',92500,6,1,5,'20160216 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',82500,6,1,6,'20160217 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',72500,6,1,7,'20160218 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,6,1,8,'20160219 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',52500,6,1,9,'20160220 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',42500,6,1,10,'20160221 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',32500,6,1,11,'20160222 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,6,1,12,'20160223 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12500,6,1,13,'20160224 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25090,6,2,1,'20160225 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25080,6,2,2,'20160226 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25070,6,2,3,'20160227 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25060,6,2,4,'20160228 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25050,6,2,5,'20160226 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25040,6,2,6,'20160225 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25030,6,2,7,'20160202 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25020,6,2,8,'20160201 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25010,6,2,9,'20160203 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25009,6,2,10,'20160204 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,6,2,11,'20160205 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,6,2,12,'20160206 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,6,2,13,'20160207 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,6,3,1,'20160208 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,6,3,2,'20160209 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25080,6,3,3,'20160210 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',27500,6,3,4,'20160211 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25500,6,3,5,'20160212 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25500,6,3,6,'20160213 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2500,6,3,7,'20160214 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',26500,6,3,8,'20160215 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',23500,6,3,9,'20160216 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',21500,6,3,10,'20160217 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',22500,6,3,11,'20160218 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',21100,6,3,12,'20160219 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2900,6,3,13,'20160220 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800,6,4,1,'20160211 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,6,4,2,'20160222 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2600,6,4,3,'20160221 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2400,6,4,4,'20160223 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,6,4,5,'20160224 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2300,6,4,6,'20160225 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2200,6,4,7,'20160226 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');

INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2100,6,4,8,'20160227 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',250000,6,4,9,'20160228 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',250000,6,4,10,'20160228 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25000,6,4,11,'20160201 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2300,6,4,12,'20160202 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1500,6,4,13,'20160203 00:00:00.000',6, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User7
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',121500,7,1,1,'20160204 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1215030,7,1,2,'20160205 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1115010,7,1,3,'20160206 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1025060,7,1,4,'20160207 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',9500,7,1,5,'20160208 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',8500,7,1,6,'20160209 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',7500,7,1,7,'20160210 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,7,1,8,'20160211 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',5500,7,1,9,'20160212 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',42500,7,1,10,'20160213 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',3500,7,1,11,'20160214 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',225010,7,1,12,'20160215 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',125040,7,1,13,'20160216 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250930,7,2,1,'20160217 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250850,7,2,2,'20160218 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250701,7,2,3,'20160219 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250602,7,2,4,'20160220 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250503,7,2,5,'20160221 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250404,7,2,6,'20160222 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250305,7,2,7,'20160223 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250206,7,2,8,'20160224 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250107,7,2,9,'20160225 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',250098,7,2,10,'20160226 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25009,7,2,11,'20160227 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',12500,7,2,12,'20160201 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',22500,7,2,13,'20160202 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',32500,7,3,1,'20160203 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',42500,7,3,2,'20160204 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2080,7,3,3,'20160205 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2700,7,3,4,'20160206 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',500,7,3,5,'20160207 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',257500,7,3,6,'20160208 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',200,7,3,7,'20160209 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',26500,7,3,8,'20160210 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',273500,7,3,9,'20160211 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',271500,7,3,10,'20160212 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',225500,7,3,11,'20160213 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',211001,7,3,12,'20160214 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',29002,7,3,13,'20160215 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',28003,7,4,1,'20160216 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25004,7,4,2,'20160217 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',26050,7,4,3,'20160218 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',52400,7,4,4,'20160219 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',92500,7,4,5,'20160220 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',72300,7,4,6,'20160221 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',82200,7,4,7,'20160222 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',92100,7,4,8,'20160223 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500900,7,4,9,'20160224 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2750000,7,4,10,'20160225 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',5000,7,4,11,'20160226 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',200,7,4,12,'20160227 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',100,7,4,13,'20160228 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User8
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',121500,8,1,1,'20160228 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1215030,8,1,2,'20160201 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1115010,8,1,3,'20160202 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',1025060,8,1,4,'20160203 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',9500,8,1,5,'20160204 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',8500,8,1,6,'20160205 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',7500,8,1,7,'20160206 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,8,1,8,'20160207 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',5590,8,1,9,'20160208 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',42590,8,1,10,'20160209 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',3590,8,1,11,'20160210 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22580,8,1,12,'20160211 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12740,8,1,13,'20160212 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25630,8,2,1,'20160213 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25550,8,2,2,'20160214 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25401,8,2,3,'20160215 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',253602,8,2,4,'20160216 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',252503,8,2,5,'20160217 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',251404,8,2,6,'20160218 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',240305,8,2,7,'20160219 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',230206,8,2,8,'20160220 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',220107,8,2,9,'20160221 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',220098,8,2,10,'20160222 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',22009,8,2,11,'20160223 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',11500,8,2,12,'20160224 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',23500,8,2,13,'20160225 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',33500,8,3,1,'20160226 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',43500,8,3,2,'20160227 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2580,8,3,3,'20160228 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2900,8,3,4,'20160227 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',590,8,3,5,'20160201 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',258500,8,3,6,'20160202 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',20019,8,3,7,'20160203 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2650018,8,3,8,'20160204 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',27350017,8,3,9,'20160205 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',27150016,8,3,10,'20160206 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',22550015,8,3,11,'20160207 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',21100114,8,3,12,'20160208 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2900213,8,3,13,'20160209 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800312,8,4,1,'20160210 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500411,8,4,2,'20160211 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2605010,8,4,3,'20160212 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',52400,8,4,4,'20160213 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',925009,8,4,5,'20160214 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES('Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',723008,8,4,6,'20160215 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES('Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',822007,8,4,7,'20160216 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',921006,8,4,8,'20160217 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25009005,8,4,9,'20160218 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',27500004,8,4,10,'20160219 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',50003,8,4,11,'20160220 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2002,8,4,12,'20160221 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1001,8,4,13,'20160222 00:00:00.000',7, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User9,10,11,12
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12500,9,1,1,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,9,1,2,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',32500,9,1,3,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',442500,9,1,4,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',52500,9,1,5,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,9,1,6,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',72500,9,1,7,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',82500,9,1,8,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',92500,9,1,9,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',21500,9,1,10,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,9,1,11,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',23500,9,1,12,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',24500,9,1,13,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,10,2,1,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',26500,10,2,2,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',27500,10,2,3,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',28500,10,2,4,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',29500,10,2,5,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',210500,10,2,6,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,10,2,7,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25100,10,2,8,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25200,10,2,9,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25300,10,2,10,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25400,10,2,11,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,10,2,12,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25600,10,2,13,'20160226 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25700,11,3,1,'20160227 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25800,11,3,2,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25900,11,3,3,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',251000,11,3,4,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',11500,11,3,5,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',12500,11,3,6,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',13500,11,3,7,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',14500,11,3,8,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',15500,11,3,9,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2100,11,3,10,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2200,11,3,11,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2300,11,3,12,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2400,11,3,13,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,12,4,1,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2600,12,4,2,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2700,12,4,3,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800,12,4,4,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2900,12,4,5,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',21000,12,4,6,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1100,12,4,7,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25010,12,4,8,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25020,12,4,9,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25030,12,4,10,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25040,12,4,11,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25050,12,4,12,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25060,12,4,13,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User13,14,15,16
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12500,13,1,1,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,13,1,2,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',32500,13,1,3,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',442500,13,1,4,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',52500,13,1,5,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,13,1,6,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',72500,13,1,7,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',82500,13,1,8,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',92500,13,1,9,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',21500,13,1,10,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,13,1,11,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',23500,13,1,12,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',24500,13,1,13,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,14,2,1,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',26500,14,2,2,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',27500,14,2,3,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',28500,14,2,4,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',29500,14,2,5,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',210500,14,2,6,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,14,2,7,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25100,14,2,8,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25200,14,2,9,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25300,14,2,10,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25400,14,2,11,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,14,2,12,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25600,14,2,13,'20160226 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25700,15,3,1,'20160227 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25800,15,3,2,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25900,15,3,3,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',251000,15,3,4,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',11500,15,3,5,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',12500,15,3,6,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',13500,15,3,7,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',14500,15,3,8,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',15500,15,3,9,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2100,15,3,10,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2200,15,3,11,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2300,15,3,12,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2400,15,3,13,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,16,4,1,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2600,16,4,2,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2700,16,4,3,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800,16,4,4,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2900,16,4,5,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',21000,16,4,6,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1100,16,4,7,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25010,16,4,8,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25020,16,4,9,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25030,16,4,10,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25040,16,4,11,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25050,16,4,12,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25060,16,4,13,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
--User17,18,19,20
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',12500,17,1,1,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,17,1,2,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',32500,17,1,3,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',442500,17,1,4,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',52500,17,1,5,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',62500,17,1,6,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',72500,17,1,7,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',82500,17,1,8,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',92500,17,1,9,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',21500,17,1,10,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',22500,17,1,11,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',23500,17,1,12,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно продам недорого',N' Продам. В хорошем состоянии. Звонить после 7.',24500,17,1,13,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
-- 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,18,2,1,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',26500,18,2,2,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',27500,18,2,3,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',28500,18,2,4,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',29500,18,2,5,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',210500,18,2,6,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',2500,18,2,7,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25100,18,2,8,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25200,18,2,9,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25300,18,2,10,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25400,18,2,11,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25500,18,2,12,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно куплю недорого',N' Куплю. В хорошем состоянии. Звонить после 7.',25600,18,2,13,'20160226 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25700,19,3,1,'20160227 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406'); 
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25800,19,3,2,'20160201 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',25900,19,3,3,'20160202 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',251000,19,3,4,'20160203 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',11500,19,3,5,'20160204 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',12500,19,3,6,'20160205 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',13500,19,3,7,'20160206 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',14500,19,3,8,'20160207 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',15500,19,3,9,'20160208 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2100,19,3,10,'20160209 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2200,19,3,11,'20160210 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2300,19,3,12,'20160211 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно услуга недорого',N'Услуга. В хорошем состоянии. Звонить после 7.',2400,19,3,13,'20160212 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
--
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2500,20,4,1,'20160213 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2600,20,4,2,'20160214 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2700,20,4,3,'20160215 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2800,20,4,4,'20160216 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',2900,20,4,5,'20160217 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',21000,20,4,6,'20160218 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',1100,20,4,7,'20160219 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25010,20,4,8,'20160220 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25020,20,4,9,'20160221 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25030,20,4,10,'20160222 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25040,20,4,11,'20160223 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25050,20,4,12,'20160224 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');
INSERT INTO Ads(Header,Description,Price,UserId,KindId,CategoryId,DateAdd,LocationId,Address)
VALUES(N'Срочно обмен недорого',N'Обмен. В хорошем состоянии. Звонить после 7.',25060,20,4,13,'20160225 00:00:00.000',1, N'г. Минск, ул. Малинина, д. 36, к. 2, кв. 406');