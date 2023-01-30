use quanlysinhvien ;
--  hien thi tat ca cac sinh vien co ten bat dau bang chu 'h'
select * from student
where StudentName like 'h%';
-- -- hien thi thong tin lop hoc co thoi gian bat dau vao thang 12
select * from class
where month(StartDate) >= 12;
-- hien thi tat cac thong tin mon hoc co credit trong khoang tu 3 - 5
select * from subject
where Credit between 3 and 5;
-- thay doi ma lop(classid) cua sinh vien co ten 'hung' la 4
update student
set ClassID = 2
where StudentName = 'Hung';
-- hien thi cac thong tin studentname, subname, mark. Du lieu sap xep theo diem thi (mark) giam dan neu trung thi sap xep theo ten tang dan
select s.StudentName, sub.SudName, m.mark  
from `student` as s
inner join `mark` as m
on s.StudentId = m.StudentId 
inner join `subject` as sub
on m.SudID = sub.SudID
order by m.mark desc, s.StudentName asc;

