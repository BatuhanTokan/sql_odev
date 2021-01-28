--1.Sorunun cevabı

select first_name,last_name,payment.payment_date from customer
inner join payment on customer.customer_id=payment.customer_id 
where payment.payment_date>='01.04.2007'

--2.Sorunun cevabı
select release_year,title,category.name  from film inner join category on film.film_id=category.category_id 
where category.name='Action' or category.name='Animation'

--3.Sorunun cevabı
select first_name,last_name,payment.payment_date from customer
inner join payment on customer.customer_id=payment.customer_id ORDER BY payment.payment_date DESC

--4.Sorunun cevabı
SELECT * FROM film WHERE title>='P%' AND film.film_id NOT IN (select film_id from inventory);

--5.sorunun cevabı
select first_name,last_name, sum(payment.amount) from customer 
inner join payment on customer.customer_id=payment.customer_id
group by first_name,last_name having first_name like 'B%';
