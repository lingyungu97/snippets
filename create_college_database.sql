-- create tables for example college database
create table college.Student(sid string, fname string, lname string, dob date);
create table college.Class(cno string, cname string, credits int64);
create table college.Teacher(tid string, fname string, lname string, dept string);
create table college.Takes(sid string, cno string, grade string);
create table college.Teaches(tid string, cno string);

-- add records to Student table	
insert into college.Student(sid, fname, lname, dob) values('paulg', 'Paul', 'Gore', '2000-09-17');
insert into college.Student(sid, fname, lname, dob) values('jerryh', 'Jerry', 'Hargrove', '1999-01-03');
insert into college.Student(sid, fname, lname, dob) values('kev18', 'Kevin', 'Lin', '1999-05-10');
insert into college.Student(sid, fname, lname, dob) values('bzen26', 'Biswa', 'Zen', '1998-04-22');
insert into college.Student(sid, fname, lname, dob) values('aprilz', 'April', 'Lopez', '2000-10-01');
	
-- add records to Class table
insert into college.Class(cno, cname, credits) values('CS313E', 'Elements of Software Design', 3);
insert into college.Class(cno, cname, credits) values('CS326E', 'Elements of Networking', 3);
insert into college.Class(cno, cname, credits) values('CS327E', 'Elements of Databases', 3);
insert into college.Class(cno, cname, credits) values('CS329E', 'Elements of Web Programming', 3);
	
-- add records to Teacher table
insert into college.Teacher(tid, fname, lname, dept) values('mitra', 'Shyamal', 'Mitra', 'Computer Science');
insert into college.Teacher(tid, fname, lname, dept) values('bulko', 'Bill', 'Bulko', 'Computer Science');		
insert into college.Teacher(tid, fname, lname, dept) values('cannata', 'Philip', 'Cannata', 'Computer Science');
insert into college.Teacher(tid, fname, lname, dept) values('scohen', 'Shirley', 'Cohen', 'Computer Science');	
	
-- add records to Takes table
insert into college.Takes(sid, cno, grade) values('paulg', 'CS329E', 'A'); 
insert into college.Takes(sid, cno, grade) values('paulg', 'CS326E', 'A-'); 
insert into college.Takes(sid, cno) values('paulg', 'CS313E'); 
insert into college.Takes(sid, cno, grade) values('jerryh', 'CS327E', 'B'); 
insert into college.Takes(sid, cno, grade) values('jerryh', 'CS329E', 'A-'); 
insert into college.Takes(sid, cno) values('kev18', 'CS329E'); 
insert into college.Takes(sid, cno, grade) values('bzen26', 'CS313E', 'B+'); 

-- add records to Teaches table
insert into college.Teaches(tid, cno) values('mitra', 'CS313E');
insert into college.Teaches(tid, cno) values('bulko', 'CS313E');
insert into college.Teaches(tid, cno) values('mitra', 'CS329E');
insert into college.Teaches(tid, cno) values('cannata', 'CS326E');
insert into college.Teaches(tid, cno) values('scohen', 'CS327E');