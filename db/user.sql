-- user
desc user;

-- insert
insert into user values(null, '관리자', 'admin@mysite.com', '1234', 'male', now());

-- select1(login)
select no, name from user where email='admin@mysite.com' and password='1234'; 

-- select2(update profile)

select * from user;

-- update
update user set name='...', gender='....' where no=10;
update user set name='...', gender='....', password='....' where no=10;

