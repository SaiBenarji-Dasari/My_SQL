select current_date();
select curdate();

select current_time();
select curtime();

select now();
select current_timestamp();

select date();
select date('2026-02-12');

select time();
select time('2025-09-23 15:45:00');

select year(now());
select month(now());
select day(now());

select dayname(now());
select monthname(now());

select date_add(now(), interval 20 day);
select adddate(now(), interval 2 month);

select datediff(now(), '2026-09-12');

select timediff('10:30:00', '09:15:00');

select str_to_date('2026-03-30','%y-%m-%d');

select date_format('2025-09-23','%W %M %Y');
select date_format(now(), '%d-%m-%y %H:%i:%s');