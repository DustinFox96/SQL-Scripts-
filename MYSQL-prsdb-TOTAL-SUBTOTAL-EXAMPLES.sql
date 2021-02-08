select R.id, R.description,  R.status, R.total, U.lastname, P.name, P.price, LI.quantity, V.name as 'Company', P.price * LI.quantity as 'Subtotal' 
from request R
 join users U on U.id = R.userid
 join lineitem LI on LI.requestId = R.Id
 join products P on P.id = LI.productsid
 join vendors V on V.id = P.vendorId
;
 
 
 
 select R.description, sum(P.price * LI.quantity) as 'Total'
 from request R
 join users U on U.id = R.userid
 join lineitem LI on LI.requestId = R.Id
 join products P on P.id = LI.productsid
 join vendors V on V.id = P.vendorId
 group by R.Description;