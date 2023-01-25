sum(CASE
  WHEN 
    cast(fdate as DATE) BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(fname,task-id),fspent,0)
  ELSE 0
END)

+
sum(
CASE
  WHEN 
    cast(ldate as DATE) BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(lname,task-id),lspent,0)
  ELSE 0
END)

+
sum(
CASE
  WHEN 
    cast(pdate as DATE) BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(Pname,task-id),pspent,0)
  ELSE 0
END)

+

sum(
CASE
  WHEN 
    castt(gdate as DATE) BETWEEN data-inicio AND data-termino
    THEN if(CONTAINS_TEXT(Gname,task-id),gspent,0)
  ELSE 0
END)