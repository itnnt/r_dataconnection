require(RJDBC)
drv <- JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver",
            "sqljdbc4-4.0.2206.100.jar") 
conn <- dbConnect(drv, "jdbc:sqlserver://10.10.2.6;instance=EDM;SelectMethod=cursor;useUnicode=true;characterEncoding=UTF-8", "vreport0101", "3dmR3p0rt@")
#then build a query and run it
sqlText <- paste("SELECT * FROM cms_producerchannel_m", sep="")
queryResults <- dbGetQuery(conn, sqlText)