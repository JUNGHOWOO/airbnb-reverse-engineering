create database 숙박공유플랫폼;

use 숙박공유플랫폼;

create table 호스트(
	호스트ID int not null,
	이름 char(10),
	닉네임 char(20),
	계좌번호 bigint,
	생년월일 int,
	이메일 char(30),
	호스트등급 char(20),
	전화번호 char(20),
	primary key(호스트ID)
	);

select *
from 호스트;

insert into 호스트 values (173927, '김지원', 'Evelyn', 1109157597658, 861023, 'jiwon1023@naver.com', 'Super host', '010-3699-3820');
insert into 호스트 values (174332, '이장현', '이', 3527696649874, 910215, 'lee9191@naver.com', 'host', '010-0385-3947');
insert into 호스트 values (176809, '정혜원', 'Kane', 1008768953641, 930418, 'jungone0418@gmail.com', 'Good host', '010-0583-2873');
insert into 호스트 values (182109, '이지금', 'Nao', 3529671103293, 770314, 'now777@naver.com', 'host', '010-1830-5583');
insert into 호스트 values (183385, '박태형', 'Shiori', 3333058473922, 680703, 'parkshi318@hanmail.com', 'host', '010-7769-3921');
insert into 호스트 values (182643, '최지현', 'Jihyun', 3333029284441, 900508, 'choihyun905@gmial.com', 'Super host', '010-9582-4858');
insert into 호스트 values (186971, '김종현', 'Casaluna', 1102648157946, 750311, 'kimjoung00@naver.com', 'host', '010-9967-3531');
insert into 호스트 values (193847, '이제원', '제이', 3520981628485, 900120, 'jaewonjj0101@naver.com', 'Good host', '010-7583-1057');
insert into 호스트 values (199645, '정산', 'San', 1102167895478, 891101, 'sansan77@naver.com', 'host', '010-3543-8874');
insert into 호스트 values (190854, '김미윤', 'Mi youn', 1009768536898, 700219, 'miyun0926@hanmail.com', 'host', '010-4532-9434');
insert into 호스트 values (202953, '박상원', 'Onda', 1003697458214, 720926, 'onpark3920@naver.com', 'host', '010-8294-9936');
insert into 호스트 values (201107, '고상윤', 'Anyonebooking', 8940002301468, 831217, 'kogo8317@gmail.comm', 'Good host', '010-1295-7418');
insert into 호스트 values (213608, '장산범', 'Jcook', 1105936746851, 760122, 'murder76@naver.com', 'Super host', '010-3496-2596');
insert into 호스트 values (215362, '김희정', '희정', 7140484783457, 851030, 'hihi85130@gmail.com', 'host', '010-1675-3495');

create table 숙소(
	숙소번호 char(10) not null,
	관리호스트ID int,
	평균평점 float,
	숙소명 char(20),
	이용가능등급 int,
	위치 char(10),
	가격 int,
	편의시설 char(30),
	어메니티 char(50),
	방수 int,
	침대수 int,
	화장실수 int,
	숙소유형 char(10),
	이용규칙 char(50),
	취소수수료 int
	primary key(숙소번호),
	foreign key(관리호스트ID) references 호스트(호스트ID)
	);

select *
from 숙소;

insert into 숙소 values ('A33645', 173927, 4.8,  '라라스테이', 3, '강릉', 110000, '편의점', '칫솔, 치약, 머리띠', 2, 2, 1, '펜션', '흡연금지, 취사가능, 애완견 불가', 55000);
insert into 숙소 values ('B96549', 174332, 3.8,  '비앤비앤', 2, '수원', 72000, '편의점, 지하철', '치약, 머리띠, 면봉, 샴푸, 바디워시', 1, 2, 1, '오피스텔', '흡연금지, 취사가능, 애완견 불가', 36000);
insert into 숙소 values ('B74654', 176809, 4.2,  '까사루나', 3, '삼척', 132000, '마트', '칫솔, 치약, 머리띠, 샴푸, 바디워시', 2, 3, 2, '펜션', '흡연금지, 취사가능, 애완견 불가', 100000);
insert into 숙소 values ('A98565', 182109, 3.7,  '애월집', 1, '제주도', 105000, null, '칫솔, 치약, 머리띠, 샴푸, 바디워시', 1, 2, 1, '아파트', '흡연금지, 취사가능, 애완견 불가', 50000);
insert into 숙소 values ('B34256', 183385, 2.9,  '산도롱2', 5, '속초', 83000, '편의점', '치약, 머리띠, 면봉, 샴푸, 바디워시', 1, 2, 1, '펜션', '흡연가능, 취사 가능, 애완견 가능', 41500);
insert into 숙소 values ('A20342', 182643, 4.9,  '노스텔지아', 4, '가평', 55000, '기차역, 편의점', '칫솔, 치약, 샴푸, 바디워시', 1, 2, 1, '펜션', '흡연가능, 취사가능, 애완견 불가', 30000);
insert into 숙소 values ('C96997', 186971, 3.9,  '더하우스', 2, '서울', 165000, '지하철, 편의점', '칫솔, 치약, 머리띠, 샴푸, 바디워시, 린스, 로션', 3, 4, 2, '아파트', '흡연금지, 취사가능, 애완동물 불가', 120000);
insert into 숙소 values ('C38209', 193847, 4.4,  '알로하스테이', 4, '강릉', 93000, '편의점, 마트', '치약, 샴푸, 바디워시, 로션', 1, 3, 1, '주택', '흡연금지, 취사불가, 애완견 가능', 45000);
insert into 숙소 values ('B09604', 199645, 3.3,  '포레스트리버', 1, '가평', 52000, '기차역, 마트', '칫솔, 치약, 샴푸, 바디워시', 1, 1, 1, '펜션', '흡연금지, 취사가능, 애완견 가능', 26000);
insert into 숙소 values ('A39402', 190854, 2.8,  '까사망원', 5, '서울', 56000, '지하철, 기차역, 편의점', '치약, 샴푸, 바디워시, 로션, 스킨', 1, 2, 1, '오피스텔', '흡연금지, 취사불가, 애완견 불가', 28000);
insert into 숙소 values ('C96943', 202953, 3.1,  '뉴룸', 4, '속초', 69000, '편의점', '칫솔, 치약, 샴푸, 바디워시', 1, 2, 1, '펜션', '흡연금지, 취사가능, 애완견 불가', 40000);
insert into 숙소 values ('B40391', 201107, 4.3,  '땅끝 조각', 4, '완도', 58000, null, '칫솔, 치약, 샴푸, 바디워시, 린스', 1, 2, 1, '펜션', '흡연금지, 취사가능, 애완견 가능', 30000);
insert into 숙소 values ('C11098', 213608, 4.9,  '비즈니스스테이', 4, '서울', 64000, '지하철, 편의점, 마트', '치약, 샴푸, 바디워시, 로션, 스킨', 1, 2, 1, '오피스텔', '흡연금지, 취사불가, 애완견 불가', 32000);
insert into 숙소 values ('A20954', 215362, 2.8,  '에버에버', 2, '용인', 48000, '지하철, 편의점', '치약, 샴푸, 바디워시', 1, 1, 1, '주택', '흡연금지, 취사가능, 애완견 불가', 24000);

create table 게스트(
	게스트ID int not null,
	이름 char(10),
	생년월일 int,
	이메일 char(30),
	전화번호 char(20),
	게스트등급 int,
	결제수단 char(10)
	primary key(게스트ID)
	);

select *
from 게스트;

insert into 게스트 values (10595910, '노정현', 770401, 'ro770401@naver.com', '010-8745-8872', 2, '신용카드');
insert into 게스트 values (10720279, '이주원', 960515, 'juwon0505@naver.com', '010-6946-2264', 5, '신용카드');
insert into 게스트 values (10776323, '김성현', 921229, 'ksh92@gmail.com', '010-8876-1265', 2, '휴대폰');
insert into 게스트 values (10945834, '윤상열', 780513, 'yunsy113@naver.com', '010-1674-9645', 3, '신용카드');
insert into 게스트 values (10213467, '장석훈', 950703, 'jangsukk499@naver.com', '010-6497-3192', 4, '휴대폰');
insert into 게스트 values (10445422, '이지현', 001228, 'leejh0012@naver.com', '010-8272-9465', 1, '휴대폰');
insert into 게스트 values (10546887, '김장현', 990511, 'kjh990511@gmail.com', '010-8765-3298', 2, '신용카드');
insert into 게스트 values (10147500, '우준호', 850222, 'wooo2164@hanmail.com', '010-2164-9865', 3, '신용카드');
insert into 게스트 values (10463712, '김지은', 800912, 'kjeun8009@naver.com', '010-3568-9551', 4, '계좌이체');
insert into 게스트 values (10989638, '고현아', 971105, 'hyun1001@naver.com', '010-8451-6295', 3, '신용카드');
insert into 게스트 values (10464776, '박상원', 010118, 'onepark0101@naver.com', '010-4679-5689', 2, '계좌이체');
insert into 게스트 values (10867893, '박규호', 931019, 'kyuho93@hanmail.com', '010-1256-4600', 5, '휴대폰');
insert into 게스트 values (10232309, '이정은', 980207, 'north9898@naver.com', '010-2558-4769', 4, '신용카드');
insert into 게스트 values (10255601, '최다현', 930320, 'dachoi20@naver.com', '010-6969-3614', 2, '계좌이체');

create table 예약 (
	숙소번호 char(10) not null,
	예약자ID int not null,
	예약현황 char(10),
	예약번호 bigint,
	여행날짜 char(20),
	예약일시 int,
	primary key(숙소번호, 예약자ID),
	foreign key(숙소번호) references 숙소(숙소번호),
	foreign key(예약자ID) references 게스트(게스트ID)
	);

select *
from 예약;

insert into 예약 values ('A33645', 10945834, '예약완료', 21112533645, '21.11.30 ~ 21.12.01', 211125);
insert into 예약 values ('B96549', 10595910, '예약완료', 21112696549, '21.11.30 ~ 21.12.03', 211126);
insert into 예약 values ('B74654', 10989638, '예약완료', 21112874654, '21.12.01 ~ 21.12.02', 211128);
insert into 예약 values ('A98565', 10445422, '예약완료', 21112498565, '21.12.03 ~ 21.12.04', 211124);
insert into 예약 values ('B34256', 10720279, '예약완료', 21102934256, '21.12.10 ~ 21.12.15', 211029);
insert into 예약 values ('A20342', 10147500, '예약완료', 21101520342, '21.12.15 ~ 21.12.16', 211015);
insert into 예약 values ('C96997', 10464776, '예약완료', 21120696997, '21.12.16 ~ 21.12.18', 211206);
insert into 예약 values ('C38209', 10213467, '예약대기', 21121038209, '21.12.20 ~ 21.12.22', 211210);
insert into 예약 values ('C96943', 10546887, '예약완료', 21112096943, '21.12.22 ~ 21.12.24', 211120);
insert into 예약 values ('B40391', 10463712, '예약완료', 21101540391, '21.12.23 ~ 21.12.25', 211015);
insert into 예약 values ('C11098', 10776323, '예약완료', 21101111098, '21.12.23 ~ 21.12.25', 211011);
insert into 예약 values ('A20954', 10867893, '예약완료', 21110720954, '21.12.24 ~ 21.12.25', 211107);
insert into 예약 values ('B74654', 10255601, '예약대기', 21111374654, '21.12.24 ~ 21.12.27', 211213);
insert into 예약 values ('B34256', 10232309, '예약완료', 21100134256, '21.12.24 ~ 21.12.30', 211001);

create table 취소 (
	숙소번호 char(10) not null,
	예약자ID int not null,
	환불진행현황 char(10),
	환불금액 int,
	primary key(숙소번호, 예약자ID),
	foreign key(숙소번호) references 숙소(숙소번호),
	foreign key(예약자ID) references 게스트(게스트ID)
	);

select *
from 취소;

insert into 취소 values ('C38209', 10463712, '승인완료', 93000);
insert into 취소 values ('B34256', 10989638, '승인완료', 83000);
insert into 취소 values ('B09604', 10464776, '승인대기', null);
insert into 취소 values ('A20342', 10867893, '승인대기', null);
insert into 취소 values ('C96997', 10232309, '승인대기', null);
insert into 취소 values ('B09604', 10255601, '승인대기', null);

create table 후기 (
	숙소번호 char(10) not null,
	이용자ID int not null,
	여행날짜 char(20),
	별점 float,
	내용 char(100),
	primary key(숙소번호, 이용자ID),
	foreign key(숙소번호) references 숙소(숙소번호),
	foreign key(이용자ID) references 게스트(게스트ID)
	);

select *
from 후기;

insert into 후기 values ('A33645', 10945834, '211130 ~ 211201', 3.0, '높은 평가에 기대를 많이 한 것 같습니다. 나쁘진 않았는데 좀 비싼 느낌이네요.');
insert into 후기 values ('B96549', 10595910, '211130 ~ 211203', 4.0, '파견 업무로 잠깐 사용했는데 조용하고 좋은 것 같아요. 다음에 또 들를 의향이 있습니다~');
insert into 후기 values ('B74654', 10989638, '211201 ~ 211202', 5.0, '바다 전망에 시설도 깔끔하고 완벽해요');
insert into 후기 values ('A98565', 10445422, '211203 ~ 211204', 5.0, '최고에요!');
insert into 후기 values ('B34256', 10720279, '211210 ~ 211215', 3.5, '다 좋은데 벌레가 너무 많아요…ㅜ');
insert into 후기 values ('A20342', 10147500, '211215 ~ 211216', 2.5, '진짜 이만한 가성비 어디 가도 없는 것 같아요. 항상 잘 이용하다 가요!');
insert into 후기 values ('C96997', 10464776, '211216 ~ 211218', 3.0, '방음 안됨. 새벽에 시끄러워 죽을뻔..');

create table 위시리스트 (
	숙소번호 char(10) not null,
	게스트ID int not null,
	primary key(숙소번호, 게스트ID),
	foreign key(숙소번호) references 숙소(숙소번호),
	foreign key(게스트ID) references 게스트(게스트ID)
	);

select *
from 위시리스트;

insert into 위시리스트 values ('A33645', 10147500);
insert into 위시리스트 values ('C11098', 10147500);
insert into 위시리스트 values ('A20342', 10147500);
insert into 위시리스트 values ('B40391', 10147500);
insert into 위시리스트 values ('C11098', 10445422);
insert into 위시리스트 values ('C38209', 10445422);
insert into 위시리스트 values ('B74654', 10989638);
insert into 위시리스트 values ('C96997', 10989638);
insert into 위시리스트 values ('B96549', 10989638);
insert into 위시리스트 values ('A33645', 10989638);
insert into 위시리스트 values ('C96997', 10464776);
insert into 위시리스트 values ('C38209', 10464776);
insert into 위시리스트 values ('B09604', 10464776);
insert into 위시리스트 values ('C96943', 10595910);

create table 메세지 (
	호스트ID int not null,
	게스트ID int not null,
	일시 int,
	발신자 char(10),
	내용 char(100),
	primary key(호스트ID, 게스트ID),
	foreign key(호스트ID) references 호스트(호스트ID),
	foreign key(게스트ID) references 게스트(게스트ID)
	);

select *
from 메세지;

insert into 메세지 values (183385, 10232309, 211029, '호스트', '예약 확인되셨습니다~ 감사합니다!');
insert into 메세지 values (182643, 10867893, 211110, '호스트', '내일 체크인은 3시부터 입니다!');
insert into 메세지 values (173927, 10945834, 211125, '게스트', '혹시 금방 예약한 사람인데요');
insert into 메세지 values (182109, 10445422, 211127, '호스트', '숙소 근처에 도착하시면 연락주세요~');
insert into 메세지 values (186971, 10464776, 211206, '호스트', '입주 3일전에 세부사항 알려드리겠습니다.');
insert into 메세지 values (176809, 10255601, 211213, '호스트', '저희 숙소는 와이파이가 별도로 비치되어 있지 않습니다.');

create view 노정현게스트예약정보
as select *
	from 예약
	where 예약자ID=10595910

select *
from 노정현게스트예약정보

create view 저평점숙소
as select *
	from 숙소
	where 평균평점<=3

select *
from 저평점숙소

create view 예약완료명단
as select 이름, 숙소번호, 예약번호, 여행날짜, 예약일시
	from 게스트, 예약
	where 게스트.게스트ID=예약.예약자ID and 예약현황='예약완료'

select *
from 예약완료명단

--1. 이주원 게스트가 예약한 숙소의 예약 일시를 검색하시오.
select 예약일시
from 예약, 게스트
where 게스트.게스트ID=예약.예약자ID and 이름='이주원'

--2. 21년 11월달에 발신된 메세지들의 호스트ID, 게스트ID, 일시와 내용을 검색하시오.
select 호스트ID, 게스트ID, 일시, 내용
from 메세지
where 일시 like '2111%'

--3. 우준호 게스트의 위시리스트에 추가되어있는 숙소명을 검색하시오.
select 숙소명
from 숙소, 위시리스트, 게스트
where 숙소.숙소번호=위시리스트.숙소번호 and 게스트.게스트ID=위시리스트.게스트ID and 이름='우준호'

--4. 노정현 게스트가 남긴 리뷰에 해당하는 숙소명과 리뷰의 별점과 내용을 검색하시오.
select 숙소명, 별점, 내용
from 숙소, 후기, 게스트
where 숙소.숙소번호=후기.숙소번호 and 후기.이용자ID=게스트.게스트ID and 이름='노정현'

--5. 한메일을 사용하는 게스트의 이름과 전화번호를 검색하시오.
select 이름, 전화번호
from 게스트
where 이메일 like '%hanmail.com'

--6. 슈퍼 호스트 등급의 호스트 닉네임을 검색하시오.
select 닉네임
from 호스트
where 호스트등급='Super host'

--7. 침대 수가 2개 이상인 숙소의 숙소명과 관리호스트ID를 검색하시오.
select 숙소명, 관리호스트ID
from 숙소
where 침대수>=2

--8. 숙소명 '라라스테이'를 예약한 게스트의 이름과 예약번호를 검색하시오.
select 이름, 예약번호
from 숙소, 게스트, 예약
where 숙소.숙소번호=예약.숙소번호 and 게스트.게스트ID=예약.예약자ID and 숙소명='라라스테이'

--9. 속초에 위치한 숙소의 숙소명과 가격을 검색하시오.
select 숙소명, 가격
from 숙소
where 위치='속초'

--10. 평균 평점 4.0 이상의 숙소의 숙소명과 평균 평점을 검색하시오.
select 숙소명,평균평점
from 숙소
where 평균평점>=4

--11. 결제수단이 '계좌이체'인 게스트의 이름과 전화번호를 검색하시오.
select 이름, 전화번호
from 게스트
where 결제수단 = '계좌이체'

--12. 서울에 위치한 숙소들의 평균 가격이 얼마인지 구하시오.
select avg(가격) as '서울 평균'
from 숙소
where 위치='서울'

--13. 숙소유형이 펜션이면서 흡연이 가능한 숙소의 숙소명과 숙소번호를 검색하시오.
select 숙소명, 숙소번호
from 숙소
where 숙소유형='펜션' and 이용규칙 like '흡연가능%'

--14. 예약현황이 '예약대기' 상태인 예약의 예약번호와 숙소번호를 검색하시오.
select 예약번호, 숙소번호
from 예약
where 예약현황 = '예약대기'

--15. 환불진행현황이 '승인완료'인 숙소의 숙소명과 환불금액을 검색하시오.
select 숙소명, 환불금액
from 취소, 숙소
where 숙소.숙소번호=취소.숙소번호 and 환불진행현황='승인완료'

--16. 숙소유형이 '아파트'에 해당하는 숙소의 숙소명과 편의시설을 검색하시오.
select 숙소명, 편의시설
from 숙소
where 숙소유형 = '아파트'

--17. 취소수수료가 가격의 50%를 초과하는 숙소의 숙소명을 검색하시오.
select 숙소명
from 숙소
where 취소수수료>(가격*0.5)

--18. '애월집'을 예약한 게스트의 이름과 여행날짜를 검색하시오.
select 이름, 여행날짜
from 게스트, 예약, 숙소
where 게스트.게스트ID=예약.예약자ID and 숙소.숙소번호=예약.숙소번호 and 숙소명='애월집'

--19. 네이버를 이메일로 사용하는 호스트의 이름과 호스트 등급을 검색하시오.
select 이름, 호스트등급
from 호스트
where 이메일 like '%naver.com'

--20. 게스트들의 평균 게스트 등급을 구하시오.
select avg(게스트등급) as '평균 게스트 등급'
from 게스트