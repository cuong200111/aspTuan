<%
Dim id
id = CInt(Request.Form("id"))


Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=master;User Id=sa;Password=123;"
sql = "DELETE FROM product WHERE id ="& id
conn.Execute sql
conn.Close
Set conn = Nothing
 Response.Redirect("../adminDel.asp")  
%>