IF((max(DATE_DIFF(data-termino,todate(today(),'%Y-%m-%d','%d-%m-%y')))) > 0 ,
(max(DATE_DIFF(data-termino,todate(today(),'%Y-%m-%d','%d-%m-%y'))))
,0)