<%
Dim id
id = CInt(Request.Form("ids"))
Dim color
color = Request.Form("color")
Dim size
size = Request.Form("size")
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "DELETE FROM cartUser WHERE idproduct ="& id &" AND colorEn='"&color&"' AND size='"&size&"'"
conn.Execute sql
conn.Close
Set conn = Nothing
 Response.Redirect("../../orderconfirm.asp")  
%>