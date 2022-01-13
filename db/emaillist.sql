show tables;
desc emaillist;

--  create
insert into emaillist values(null, '루', '피', 'luffy@gmail.com');

-- read
select no, first_name, last_name, email from emaillist order by no desc;

-- delete
delete from emaillist where no = 4;