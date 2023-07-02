

<%
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=fashion;User Id=sa;Password=123;"
%>