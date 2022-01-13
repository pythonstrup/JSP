create table member(
	id varchar(10) not null, 
    pass varchar(10)not null, 
    name varchar(30) not null,
    regidate timestamp default now() not null, 
    primary key(id) 
);


create table board(
	num int auto_increment primary key,
    title varchar(200) not null,
    content varchar(2000) not null,
    id varchar(10) not null,
    postdate timestamp default now() not null,
    visitcount int
);

alter table board
add constraint board_mem_fk foreign key (id)
references member (id);


insert into member (id, pass, name) 
values ("musthave", "1234", "머스트해브");

insert into board(title, content, id, postdate, visitcount)
values("제목", "내용입니다.", "musthave", now(), 0);