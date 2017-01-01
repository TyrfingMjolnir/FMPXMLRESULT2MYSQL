FMPXMLResult 2 SQL
==================

The file: FMPXMLRESULT2MYSQL.xslt

This is an XSLT stylesheet that can be used to export data from Filemaker to MySQL

Example

$ mysql --user=<\<USERNAME\>> --password=<\<PASSWORD\>> --host=<\<URI\>> --local-infile

LOAD XML LOCAL INFILE "/tmp/table.mysql.xml" INTO TABLE <\<scheme\>>.<\<table\>> CHARACTER SET "UTF8" ROWS IDENTIFIED BY "\<RECORD\>";



FMPXMLResult 2 SQL CREATE TABLE
===============================

The file: FMPXMLRESTULT2SQLCREATETABLE.xslt

This is an XSLT stylesheet that can be used to export table definition from Filemaker to SQL( psql for this one, but can easily be changed to the benefit of MySQL or other SQL dialects )

Tip: For the purpose of running this script I do recommend you export 1 record, not having to wait unnecessary for records that are not being used. 

<img alt="[x] Format Using Layout will provoke the export to populate the LAYOUT-attribute" src="FormatUsingLayout.jpg" width="100%" max-width=1008>

License
=======

Copyright (c) 2008 Gjermund Gusland Thorsen, released under the MIT License.

All rights deserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

This piece of software comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
