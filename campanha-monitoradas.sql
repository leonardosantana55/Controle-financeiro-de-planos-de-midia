count_distinct((if(REGEXP_CONTAINS(fname,'[F-F-F-F]{2}-[0-9-09]{4}'),fname,null)))

+

count_distinct((if(REGEXP_CONTAINS(lname,'[F-F-F-F]{2}-[0-9-09]{4}'),lname,null)))

+

count_distinct((if(REGEXP_CONTAINS(pname,'[F-F-F-F]{2}-[0-9-09]{4}'),pname,null)))

+

count_distinct((if(REGEXP_CONTAINS(gname,'[F-F-F-F]{2}-[0-9-09]{4}'),gname,null)))