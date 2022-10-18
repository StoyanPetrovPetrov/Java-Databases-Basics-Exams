insert into products(name, type, price)(
select 
    concat(last_name, ' ', 'specialty'),
    'Cocktail',
    ceiling(salary * 0.01)
from waiters
where id > 6
);
