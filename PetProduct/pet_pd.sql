
-- 상품 테이블
create table pet_pd(
	p_num number primary key,
	p_price number not null,
	p_name varchar2(20) not null,
	p_img varchar2(100) not null,
	p_address varchar2(1000) not null,
	p_content varchar2(50) not null,	
	p_hit number default 0,
	m_id varchar2(20) default null,
	foreign key(m_id) REFERENCES member(m_id)
	
);
	
select * from pet_pd;
delete from pet_pd;
drop table pet_pd;


-- 회원 테이블
create table member(	
	m_id varchar2(20) primary key,
	m_pw varchar2(20) not null,
	m_name varchar2(20) not null,
	m_email varchar2(20) not null,
	m_address varchar2(20) not null,
	m_phone number(13) not null,
	m_admin number default 0,
	m_resv number default 0
	
);
	
select * from member;
delete from member;
drop table member;


-- 관리자 객체
insert into member values('sidhd8203','1234','최성진','naver','대전',0,0,01030938203);
insert into member values('sidhd1234','1234','최성진','naver','대전',0,0,01030938203);
delete from member;

create sequence p_num;
drop sequence p_num;


