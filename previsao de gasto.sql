
(((sum(CASE
  WHEN 
    Fdate BETWEEN DATETIME_SUB(TODAY(), INTERVAL 8 DAY) AND DATETIME_SUB(TODAY(), INTERVAL 1 DAY)
    THEN if(CONTAINS_TEXT(Fname,task-id),fspent,0)
  ELSE 0
END)

+

sum(CASE
  WHEN 
    ldate BETWEEN DATETIME_SUB(TODAY(), INTERVAL 8 DAY) AND DATETIME_SUB(TODAY(), INTERVAL 1 DAY)
    THEN if(CONTAINS_TEXT(lname,task-id),lspent,0)
  ELSE 0
END)

+

sum(CASE
  WHEN 
    pdate BETWEEN DATETIME_SUB(TODAY(), INTERVAL 8 DAY) AND DATETIME_SUB(TODAY(), INTERVAL 1 DAY)
    THEN if(CONTAINS_TEXT(Pname,task-id),pspent,0)
  ELSE 0
END)

+

sum(CASE
  WHEN 
    gdate BETWEEN DATETIME_SUB(TODAY(), INTERVAL 8 DAY) AND DATETIME_SUB(TODAY(), INTERVAL 1 DAY)
    THEN if(CONTAINS_TEXT(Gname,task-id),gspent,0)
  ELSE 0
END))/7)

*

IF((max(DATE_DIFF(data-termino,todate(today(),'%Y-%m-%d','%d-%m-%y')))) > 0 ,(max(DATE_DIFF(data-termino,todate(today(),'%Y-%m-%d','%d-%m-%y')))),0))

+

(sum(CASE
  WHEN 
    Fdate BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(Fname,task-id),fspent,0)
  ELSE 0
END)

+
sum(
CASE
  WHEN 
    ldate BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(lname,task-id),lspent,0)
  ELSE 0
END)

+
sum(
CASE
  WHEN 
    pdate BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(Pname,task-id),pspent,0)
  ELSE 0
END)

+
sum(
CASE
  WHEN 
    gdate BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(Gname,task-id),gspent,0)
  ELSE 0
END))

