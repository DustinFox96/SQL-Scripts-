start transaction; 
update lineitem
set quantity = quantity + 1 
where id = 1;
rollback;
select * 
from lineitem;