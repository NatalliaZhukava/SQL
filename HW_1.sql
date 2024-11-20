create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

DO $$
BEGIN
    FOR i IN 1..70 LOOP
        INSERT INTO employees (employee_name)
        VALUES ('Employee ' || i);
    END LOOP;
END $$;

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values (3, 7), (1, 4), (33,17), (48, 3), (72, 16),
(55, 2), (68, 14), (85, 10),
(5, 9), (35, 4), (45, 5), (90, 3),
(40, 13), (2,1), (4,2), (71,3),
(23, 4), (7,4), (8,5), (73,6), 
(11, 2), (10,7), (12,8), (74,9), 
(52, 10), (14,10), (17,11), (75,12), 
(15, 13), (18,13), (19,14), (76,15), 
(26, 4), (20,16), (21,1), (77,2),
(16, 1), (24,3), (25,4), (80,5);

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'),
    ('Middle Python developer'),
    ('Senior Python developer'),
    ('Junior Java developer'),
    ('Middle Java developer'),
    ('Senior Java developer'),
    ('Junior JavaScript developer'),
    ('Middle JavaScript developer'),
    ('Senior JavaScript developer'),
    ('Junior Manual QA engineer'),
    ('Middle Manual QA engineer'),
    ('Senior Manual QA engineer'),
    ('Project Manager'),
    ('Designer'),
    ('HR'),
    ('CEO'),
    ('Sales manager'),
    ('Junior Automation QA engineer'),
    ('Middle Automation QA engineer'),
    ('Senior Automation QA engineer');
   
 create table roles_employee (
 	id serial primary key,
 	employee_id int not null references employees (id),
 	role_id int not null references roles (id)
 );
 insert into roles_employee (employee_id, role_id)
 values (7, 2), (20, 4), (3, 9), (5, 13), (23, 4),
(11, 2), (10, 9), (22, 13), (21, 3), (34, 4),
(6, 7), (36, 17), (16, 3), (4, 8), (9, 2),
(58, 13), (26, 1), (27, 14), (28, 10), (46, 5),
(69, 2), (37, 2), (1, 3), (40, 6), (50, 11),
(39, 17), (31, 1), (52, 14), (57, 20), (38, 9),
(17, 13), (66, 16), (62, 6), (48, 12), (41, 15),
(43, 2), (32, 13), (70, 1), (15, 20), (56, 17);




