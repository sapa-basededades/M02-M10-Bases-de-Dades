
-- Classical Scott database (EMP, DEPT, SALGRADE) for PostgreSQL
-- Version with Smith's deptno changed from 20 to NULL
-- See: https://github.com/rsp/pg-scott


-- DDL - Data Definition Language:

begin;

create table dept (
  deptno integer,
  dname  text,
  loc    text,
  constraint pk_dept primary key (deptno)
);

create table emp (
  empno    integer,
  ename    text,
  job      text,
  mgr      integer,
  hiredate date,
  sal      integer,
  comm     integer,
  deptno   integer,
  constraint pk_emp primary key (empno),
  constraint fk_mgr foreign key (mgr) references emp (empno),
  constraint fk_deptno foreign key (deptno) references dept (deptno)
);

create table salgrade (
  grade integer,
  losal integer,
  hisal integer,
  constraint pk_salgrade primary key (grade)
);

/*
create table bonus (
  ename text,
  job   text,
  sal   integer,
  comm  integer
);
*/
