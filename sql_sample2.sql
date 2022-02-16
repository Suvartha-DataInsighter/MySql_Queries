SELECT payment_id,(customer_id),avg(amount) FROM sakila.payment
where payment_id>=20 and payment_id<=70
group by payment_id
order by avg(amount) desc
limit 10;