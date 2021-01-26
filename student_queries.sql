---1 average math score for each faculty
select sf.student_faculty_name ,avg(ss.math_score) as Mean_score
from student_info si join student_score ss 
on si.student_id =ss.student_id left join student_faculty sf 
on ss.student_id =sf.student_id 
group by sf.student_faculty_name
order by avg(ss.math_score) desc ;

---2 students with same surnames, but with others names
select si.student_surname,si.student_name as "name 1",si2.student_name  as "name 2"
from student_info si,student_info si2 
where si.student_surname=si2.student_surname and 
si.student_name <>si2.student_name 
order by si.student_surname;

---3 select student , which programming score big then is greater than 17,
---and is not from Armenia
select si.student_name,si.student_surname,sc.student_country
from student_info si right join student_country sc 
on si.student_id =sc.student_id 
where si.student_id in (
select ss.student_id
from student_score ss 
where ss.programming_score>17) and sc.student_country <> 'Armenia'


---4 average score for each country 
select ta.student_country,avg(student_score) as avg_score
from (
select sc.student_country ,sc.student_city,sr.student_score 
from student_country sc join student_year sr
on sc.student_id =sr.student_id 
) ta
group by ta.student_country
order by avg(student_score) desc;


---5 average score and count of student for each city in data
select distinct sc.student_city ,
avg(ss.math_score) over(partition by sc.student_city) as AVG_score,
count(ss.math_score) over(partition by sc.student_city) as count_
from student_info si join student_score ss
on si.student_id =ss.student_id left join student_country sc 
on sc.student_id =ss.student_id
order by avg(ss.math_score) over(partition by sc.student_city) desc;


---6 statistic for each type of gender
select distinct si.student_gender,
avg(sr.student_score) over(partition by si.student_gender) as AVG_score,
avg(ss.math_score) over(partition by si.student_gender) as AVG_score_math,
avg(ss.programming_score) over(partition by si.student_gender) as AVG_score_prog,
avg(ss.statistics_score) over(partition by si.student_gender) as AVG_score_stat
from student_info si join student_year sr on si.student_id =sr.student_id
join student_score ss on ss.student_id =sr.student_id ;

---7 create view of crosstab
create view summary_count as
select sf.student_faculty_name,
  sum(case when si.student_gender = 'M' then 1 else 0 end) Count_m,
  sum(case when si.student_gender = 'F' then 1 else 0 end) Count_f
from student_info si join student_faculty sf 
on si.student_id =sf.student_id 
group by sf.student_faculty_name;
