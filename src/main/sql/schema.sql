
create database seckill;

use seckill;

create table seckill(
`seckill_id` bigint not null AUTO_INCREMENT COMMENT '��Ʒ��������',
`name` VARCHAR(120) not null COMMENT '��Ʒ������',
`number` int not null COMMENT '�������',
`start_time` timestamp not null COMMENT '��ɱ��ʼʱ��',
`end_time` timestamp not null COMMENT '��ɱ����ʱ��',
`create_time` timestamp not null default CURRENT_TIMESTAMP COMMENT '����ʱ��',
PRIMARY KEY(seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT '��ɱ����';

insert into 
	seckill(name,number,start_time,end_time)
values
	('1000Ԫ��ɱiphone6',100,'2016-05-09 00:00:00','2016-05-10 00:00:00'),
	('500Ԫ��ɱipad2',200,'2016-05-09 00:00:00','2016-05-10 00:00:00'),
	('300Ԫ��ɱС��4',300,'2016-05-09 00:00:00','2016-05-10 00:00:00'),
	('200Ԫ��ɱ����note',400,'2016-05-09 00:00:00','2016-05-10 00:00:00');
	

create table success_killed(
seckill_id bigint not null COMMENT '��ɱ��Ʒid',
user_phone bigint not null COMMENT '�û��ֻ���',
state tinyint not null default -1 COMMENT '״̬��ʾ��-1����Ч   0���ɹ�  1���Ѹ��� ',
create_time timestamp not null COMMENT '����ʱ��',
primary key (seckill_id,user_phone),
key idx_create_time(create_time)
)engine=InnoDB default CHARSET=UTF8 COMMENT '��ɱ�ɹ���ϸ��';