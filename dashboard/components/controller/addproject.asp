

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
Dim datas
datas = Request.Form("datas")
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=test;User Id=sa;Password=123;"
sql = "INSERT INTO product (id,datas,title,price,img,category) VALUES ('" & id & "','" & datas & "','" & title & "','" & price & "','" & img & "','" & category & "')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Redirect("../../create.asp")
 %>