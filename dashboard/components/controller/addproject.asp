

<%
Dim id
id = CInt(Request.Form("id"))
Dim title
title = Request.Form("title")
Dim price
price = CInt(Request.Form("price"))
Dim img
img = Request.Form("imgBase64")
Dim category
category = Request.Form("selectCategory")

Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO product (id,title,price,img,category) VALUES ('" & id & "','" & title & "','" & price & "','" & img & "','" & category & "')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Redirect("../../create.asp")
%>