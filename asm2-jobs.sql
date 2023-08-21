create database jobs;
use jobs;
drop database jobs;

create table category(
	id int auto_increment primary key,
    name varchar(255),
    number_choose int
);
-- select * from category order by number_choose desc limit 4;

insert into category values
(1,'JAVA',3),
(2,'NODEJS',2),
(3,'PHP',4),
(4,'ASP.NET',1),
(5,'PYTHON',2),
(6,'C++',1),
(7,'Kotlin',3);

create table role(
	id int auto_increment primary key,
    role_name varchar(255)
);

insert into role values
(1,'EMPLOYER'),
(2,'USER');

create table cv(
	id int auto_increment primary key,
    file_name varchar(255)
);

insert into cv values
(1,'cv1'),
(2,'cv2'),
(3,'cv3'),
(4,'cv4'),
(5,'cv5');
insert into cv value(6,'cv6');

-- select * from users;
-- select * from cv;

create table users(
	id int auto_increment primary key,
    address varchar(255),
    description varchar(255),
    email varchar(255),
    full_name varchar(255),
    image varchar(255),
    password varchar(255),
    phone_number varchar(255),
    status int,
    role_id int,
    cv_id int,
    foreign key (cv_id) references cv(id),
    foreign key (role_id) references role(id)
);

insert into users values
(1,'Da Nang','description1','john@gmail.com','john','person_1.jpg','$2a$12$f0cTRhHKbeSF/pxfEljKOOXyJErdOtmFo/jj3O0N7bl0.dTEKLck.','0905123456',1,1,1),
(2,'Huế','description2','mary@gmail.com','mary','person_1.jpg','$2a$12$f0cTRhHKbeSF/pxfEljKOOXyJErdOtmFo/jj3O0N7bl0.dTEKLck.','0907123456',1,2,2),
(3,'Hà Nội','description3','susan@gmail.com','susan','person_1.jpg','$2a$12$f0cTRhHKbeSF/pxfEljKOOXyJErdOtmFo/jj3O0N7bl0.dTEKLck.','0909123456',1,2,3),
(4,'HCM','description4','fancy@gmail.com','fancy','person_1.jpg','$2a$12$f0cTRhHKbeSF/pxfEljKOOXyJErdOtmFo/jj3O0N7bl0.dTEKLck.','0907123456',1,2,4),
(5,'Quy Nhơn','description5','beck@gmail.com','beck','person_1.jpg','$2a$12$f0cTRhHKbeSF/pxfEljKOOXyJErdOtmFo/jj3O0N7bl0.dTEKLck.','0909123456',1,2,5);

create table reset_token(
	id int auto_increment primary key,
    code varchar(255),
    expired_time datetime,	
    user_id int,
    foreign key (user_id) references users(id)
);
-- select * from reset_token;
create table company(
	id int auto_increment primary key,
    address varchar(255),
    description text,
    email varchar(255),
    logo varchar(255),
    company_name varchar(255),
    phone_number varchar(255),
    status int,
    user_id int,
    foreign key (user_id) references users(id)
);
-- select * from company;
-- select company from company left join recruitment on company.id = recruitment.company_id 
-- group by company.id order by  count(recruitment.id) desc; 

insert into company values
(1,"Da Nang","description1","fpt@gmail.com","company-1.jpg","FPT Software","0123456789",1,1),
(2,"Hue","description2","bap@gmail.com","company-1.jpg","BAP Software","0123456789",1,2),
(3,"Ha Noi","description3","DAC@gmail.com","company-1.jpg","DAC Tech","0123456789",1,3),
(4,"HCM","description4","neolab@gmail.com","company-1.jpg","NEOLAB","0123456789",1,4),
(5,"Quy Nhon","description5","bravo@gmail.com","company-1.jpg","BRAVO","0123456789",1,5),
(6,"Quy Nhon","description6","bravo1@gmail.com","company-1.jpg","BRAVO1","0123456789",1,6);

create table follow_company(
	id int auto_increment primary key,
    company_id int,
    user_id int,
    foreign key (company_id) references company(id),
    foreign key (user_id) references users(id)
);

create table recruitment(
	id int auto_increment primary key,
    address varchar(255),
    description text,
    experience varchar(255),
    quantity int,
    ranks varchar(255),
    salary varchar(255),
    title varchar(255),
    type varchar(255),
    deadline varchar(255),
    view int,
    status int,
    created_at varchar(255),
    company_id int,
    category_id int,
    foreign key (company_id) references company(id),
    foreign key (category_id) references category(id)
);
-- select * from recruitment; 

insert into recruitment values
(1,"Đà Nẵng","description1","1",5,"Fresher","8000000","Tuyển lập trình viên Java","Fulltime","15-08-2023",2,1,"01-08-2023",1,1),
(2,"Đà Nẵng","description2","1",5,"Senior","25000000","Tuyển lập trình viên .NET","Fulltime","15-08-2023",2,1,"01-08-2023",1,4),
(3,"Đà Nẵng","description1","1",5,"Fresher","8000000","Tuyển lập trình viên Java","Fulltime","15-08-2023",2,1,"01-08-2023",2,1),
(4,"Đà Nẵng","description2","1",5,"Senior","25000000","Tuyển lập trình viên .NET","Fulltime","15-08-2023",2,1,"01-08-2023",2,4),
(5,"Đà Nẵng","description1","1",5,"Fresher","8000000","Tuyển lập trình viên Java","Fulltime","15-08-2023",2,1,"01-08-2023",3,1),
(6,"Đà Nẵng","description2","1",5,"Senior","25000000","Tuyển lập trình viên .NET","Fulltime","15-08-2023",2,1,"01-08-2023",4,4);

create table save_job(
	id int auto_increment primary key,
    recruitment_id int,
    user_id int,
    foreign key (recruitment_id) references recruitment(id),
    foreign key (user_id) references users(id)
);

create table applypost(
	id int auto_increment primary key,
    name_cv varchar(255),
    text varchar(255),
    status int,
    recruitment_id int,
    user_id int,
    created_at varchar(255),
    foreign key (recruitment_id) references recruitment(id),
    foreign key (user_id) references users(id)
);
-- select * from applypost a left join recruitment r on a.recruitment_id = r.id where r.company_id = 1;

insert into applypost values
(1,"cv1","Xin ứng tuyển",1,1,2,"2023-08-01"),
(2,"cv2","Xin ứng tuyển",1,1,3,"2023-08-01"),
(3,"cv3","Xin ứng tuyển",1,2,4,"2023-08-01"),
(4,"cv4","Xin ứng tuyển",1,4,5,"2023-08-01"),
(5,"cv5","Xin ứng tuyển",1,4,1,"2023-08-01");