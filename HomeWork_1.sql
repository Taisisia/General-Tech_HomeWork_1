show databases; --  какие уже есть созданные базы данных
create database homeworks; -- создаем базу данных homeworks

use homeworks; -- переходим в базу данных homeworks

-- В этой базе создать таблицу staff с полями:
-- • id – integer - уникальное значение, не пустое, с автозаполнением 
-- • firstname - varchar - не пустое
-- • lastname - varchar - не пустое
-- • position - varchar
-- • age - integer - от 0 до 110(вкл.)
-- • has_child – char только один символ, по умолчанию 'N' 
-- • username - varchar - уникальный

create table staff (
	id integer key auto_increment,
    firstname varchar(64) not null,
    lastname varchar(64) not null,
    position varchar (64),
    age integer check (age between 1 and 100),
	has_child char (1) default 'N',
    username varchar(64) unique
    );
    
    select * from staff;
    
    -- Добавить 5 строк
    insert into staff (firstname, lastname, position, age, has_child, username)
    values 	('Bob', 'Dou', 'Engineer', 30, 'y', 'BobDou'),
			('Bob', 'Smit', 'Intern', 20, 'n', 'BobSmit'),
			('Teilor', 'Fox', 'Secretary', 25, 'n', 'TeilorFox'),
            ('Lora', 'Dou', 'Secretary', 29, 'y', 'LoraDou'),
			('Max', 'Black', 'Manager', 33, 'y', 'MaxBlack');
    
-- 4. Удалить таблицу staff

SET SQL_SAFE_UPDATES = 0; -- разрешение на удаление

DROP TABLE staff; -- удаляет польностью таблицу

-- 5. Удалить бд homeworks

DROP database homeworks;

-- Создать бд tasks и в этой базе создать таблицу Staff используя скрипт.
-- https://github.com/annykh/genTech/blob/main/staff.txt

create database tasks;

use tasks;

CREATE TABLE Staff (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(64) NOT NULL,
    lastname VARCHAR(64) NOT NULL,
    position VARCHAR(128),
    age INTEGER,
    has_child CHAR(1),
    username VARCHAR(128) unique
  );

INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Daniels'
        , 'Senior Teacher'
        , 22
        , 'N'
        , 'annakhach5'
        );
        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Austin'
        , 'Junior Blogger'
        , 25
        , 'Y'
        , 'tom12345'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Bill'
        , 'Lorentz'
        , 'Junior Web Developer'
        , 40
        , 'Y'
        , 'billt1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'May'
        , 'Junior Backend Developer'
        , 25
        , 'Y'
        , 'lil12'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Nona'
        , 'Lucky'
        , 'Junior Teacher'
        , 20
        , 'N'
        , 'LuckyNona'
        ); 
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ( 'Nancy'
        , 'Greenberg'
        , 'Middle UI Designer'
        , 32
        , 'Y'
        , 'nancy1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Daniel'
        , 'Faviet'
        , 'Senior UX Designer'
        , 43
        , 'Y'
        , 'favietD'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ally'
        , 'Austin'
        , 'Junior UI Designer'
        , 28
        , 'N'
        , 'ally1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Chen'
        , 'Senior Teacher'
        , 25
        , 'Y'
        , 'lilychen'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Austin'
        , 'Middle Teacher'
        , 34
        , 'Y'
        , 'anna28'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Alexander'
        , 'Lorentz'
        , 'Junior Backend Developer'
        , 25
        , 'N'
        , 'alex12345'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Lorentz'
        , 'Junior UX Designer'
        , 18
        , 'N'
        , 'lorentz99'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Lucky'
        , 'Middle Blogger'
        , 34
        , 'Y'
        , 'lucky78'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Junior Blogger'
        , 18
        , 'N'
        , 'weiss11'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Weiss'
        , 'Junior UI Designer'
        , 18
        , 'N'
        , 'tom222'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Bloom'
        , 'Middle UX Designer'
        , 20
        , 'N'
        , 'bloom5'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Berg'
        , 'Middle Teacher'
        , 34
        , 'N'
        , 'tommy1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Berg'
        , 'Senior Teacher'
        , 37
        , 'N'
        , 'ash89'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Weiss'
        , 'Middle Blogger'
        , 45
        , 'N'
        , 'lilyW1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Lorentz'
        , 'Senior UX Designer'
        , 31
        , 'N'
        , 'annlo1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Middle UX Designer'
        , 18
        , 'N'
        , 'weiss1'
        );       
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Keren'
        , 'Junior UX Designer'
        , 34
        , 'N'
        , 'annaK1'
        );      
        
        select * from Staff;
        
--   7. Из таблицы вывести сотрудников, которым больше 20 и меньше 40.

select *
from Staff
where age between 20 and 40;

-- 8. Вывести сотрудников, которым меньше 30 или больше 45.

select *
from Staff
where age not between 30 and 45;

-- 9. Вывести имена, фамилии и возраст тех сотрудников, у которых id либо 3, либо 7, либо 10.

select firstname, lastname, age
from Staff
where id = 3 or id = 7 or id = 10;


-- 10. Вывести сотрудников у которых имя начинается на букву 'A', а фамилия заканчивается на букву 'S'.

select *
from Staff
where firstname like 'A%' and lastname like '%S' ;




