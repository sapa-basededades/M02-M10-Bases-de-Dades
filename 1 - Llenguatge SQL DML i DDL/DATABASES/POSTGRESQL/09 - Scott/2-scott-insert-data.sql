
-- Classical Scott database (EMP, DEPT, SALGRADE) for PostgreSQL
-- See: https://github.com/rsp/pg-scott


-- DML - Data Manipulation Language:

insert into dept (deptno,  dname,        loc)
       values    (10,     'ACCOUNTING', 'NEW YORK'),
                 (20,     'RESEARCH',   'DALLAS'),
                 (30,     'SALES',      'CHICAGO'),
                 (40,     'OPERATIONS', 'BOSTON');

insert into salgrade (grade, losal, hisal)
       values        (1,      700,  1200),
                     (2,     1201,  1400),
                     (3,     1401,  2000),
                     (4,     2001,  3000),
                     (5,     3001,  9999);

insert into emp (empno, ename,    job,        mgr,   hiredate,     sal, comm, deptno)
       values   (7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL,   20),
                (7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300,   30),
                (7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500,   30),
                (7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975, NULL,   20),
                (7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400,   30),
                (7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850, NULL,   30),
                (7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450, NULL,   10),
                (7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000, NULL,   20), -- date fixed
                (7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL,   10),
                (7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,    0,   30),
                (7876, 'ADAMS',  'CLERK',     7788, '1983-01-12', 1100, NULL,   20), -- date fixed
                (7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950, NULL,   30),
                (7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000, NULL,   20),
                (7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL,   10);

commit;
