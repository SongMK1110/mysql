create table test2(
id int not null primary key,
col1 int null,
col2 float null,
col3 varchar(45) null
);

/* 번호, 이름, 전화번호, 가입일자, 나이*/

drop table member;

create table member(
	no	 int not null primary key,
    name varchar(10) not null,
    tel  varchar(20),
    rdate date,
    age int
);
/* 101, 이순신, '010-111-222'  */
insert into member (no, name) values (100, '홍길동');
insert into member (no, name, tel) values (101, '이순신', '010-111-222');
update member set tel = '010-333-222' where no = 101;
delete from member where no = 100;

select *
from member;

/* 게시판 글번호, 작성자, 제목, 내용, 작성일자, 조회수 */
create table board(
	no int not null primary key,
    name varchar(10) not null,
    title varchar(100) not null,
    text long varchar not null,
    rdate date,
    views int
);

/* 게시글 등록 */
insert into board (no, name, title, text, rdate, views)
 value (101, '홍길동', '아무거나', '가나다라', '2022-12-23', 100);
 
insert into board (no, name, title, text, rdate, views)
 value (100, '몰라', '몰라', '몰라', '2022-12-23', 1000);
/* 게시글에서 내용 수정 */
update board set name = '김몰라' where no ='100';
/* 게시글 삭제 */
delete from board where no = '101';

select *
from board;