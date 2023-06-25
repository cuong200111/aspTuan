

<%
Dim ids
ids = Request.Form("ids")
Dim imgs
imgs = Request.Form("imgs")
Dim colors
colors =Request.Form("colors")

Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO libraryproduct (ids,imgs,colors) VALUES ('" & ids & "','" & imgs & "','" & colors & "')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Redirect("../../create.asp")
 %>
