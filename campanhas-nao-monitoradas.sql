count_distinct((if(REGEXP_CONTAINS(fname,'[F-F-F-F]{2}-[0-9-09]{4}'),null, fname)))

+

count_distinct((if(REGEXP_CONTAINS(lname,'[F-F-F-F]{2}-[0-9-09]{4}'),null, lname)))

+

count_distinct((if(REGEXP_CONTAINS(pname,'[F-F-F-F]{2}-[0-9-09]{4}'),null, pname)))

+

count_distinct((if(REGEXP_CONTAINS(gname,'[F-F-F-F]{2}-[0-9-09]{4}'),null, gname)))