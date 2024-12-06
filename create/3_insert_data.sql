\c cs415

-- User
INSERT INTO
    WebUser(web_user_id,first_name,last_name,email,password,created_date,is_active,last_login)
VALUES
    (1,'Main','User','muser@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP),
    (2,'Willie','Nelson','willie.nelson@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP);
ALTER SEQUENCE WebUser_web_user_id_seq RESTART WITH 100;

--UserInfo
INSERT INTO 
    UserInfo(user_info_id, web_user_id, profile_bio, profile_picture, modified_date, created_date)
VALUES
    (1, 1, 'This is just my profile and my name is Main', 'https://storage.googleapis.com/pai-images/4e3bd28f9417448187a0bdfdf3c1222a.jpeg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 2, 'This is just my profile and my name is Willie', 'https://is1-ssl.mzstatic.com/image/thumb/Features125/v4/b4/c2/9a/b4c29a1e-3b45-2b60-be65-dbb96d21e42a/mza_1383128222591135178.png/375x375bb.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
ALTER SEQUENCE UserInfo_user_info_id_seq RESTART WITH 100;

-- PhoneType
INSERT INTO PhoneType(phone_type_id, phone_type)
VALUES
    (1,'Mobile'),
    (2,'Home'),
    (3,'Work'),
    (4,'Emergency');
ALTER SEQUENCE PhoneType_phone_type_id_seq RESTART WITH 5;

-- UserPhone
INSERT INTO UserPhone(user_phone_id, phone_type_id, phone_number, created_date, is_active, web_user_id)
VALUES
    (1, 1, '8011237683', CURRENT_TIMESTAMP, '1', 1),
    (2, 1, '4359831234', CURRENT_TIMESTAMP, '1', 1),
    (3, 1, '8017654567', CURRENT_TIMESTAMP, '1', 2),
    (4, 1, '4350876780', CURRENT_TIMESTAMP, '1', 2);
ALTER SEQUENCE UserPhone_user_phone_id_seq RESTART WITH 5;

-- AddressType
INSERT INTO AddressType(address_type_id,address_type)
VALUES
    (1,'Home'),
    (2,'Work'),
    (3,'Billing'),
    (4,'Shipping');
ALTER SEQUENCE AddressType_address_type_id_seq RESTART WITH 6;

-- UserAddress
INSERT INTO UserAddress(user_address_id,web_user_id,street_1,street_2,city,st,zip,country,address_type_id,created_date)
VALUES
    (1,1,'100 Fake St','','Fake City','UT','84032','United States',1,CURRENT_TIMESTAMP),
    (2,1,'200 Fake Ave','','Faker City','UT','84033','United States',3,CURRENT_TIMESTAMP),
    (3,2,'200 Fake Ave','','Fakie City','UT','84033','United States',1,CURRENT_TIMESTAMP);
ALTER SEQUENCE UserAddress_user_address_id_seq RESTART WITH 4;

--PageData
INSERT INTO PageData(page_data_id, page_name, page_title, page_description, page_picture, page_menu)
VALUES
    (1,'Week 1','VM, Repo, Docker and Databases','Setting up a your Github repositories, AWS Academy, Docker Desktop, Database schema and running a container','https://pbs.twimg.com/media/DbJfBz8UwAEgZtB?format=png&name=360x360','Week 1 - Overview and Setup'),
    (2,'Week 2','Postgres and Django','Install your database local in a container, Install Django locally and connect to DB server.  Creating tables and adding data','https://miro.medium.com/v2/resize:fit:720/format:webp/1*Bd5dYeGhFGhYuqJUpHjrNA.png','Week 2 - Postres DB, Django API');
ALTER SEQUENCE PageData_page_data_id_seq RESTART WITH 5;