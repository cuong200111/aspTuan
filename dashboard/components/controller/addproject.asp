

<%
Dim id
id = CInt(Request.Form("id"))
Dim title
title = Request.Form("title")
Dim price
price = Request.Form("price")
Dim sale 
sale= CInt(Request.Form("sale"))
Dim img
img = Request.Form("imgBase64")
Dim category
category = Request.Form("selectCategory")
Dim datas
datas = Request.Form("datas")
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO product (id,datas,title,price,img,category,sale) VALUES ('" & id & "','" & datas & "','" & title & "','" & price & "','" & img & "','" & category & "','"& sale &"')"

conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Redirect("../../create.asp")
 %>