
<%
Dim names
names =Request.Form("names")
Dim pass
pass=Request.Form("pass")
Dim nameacc
nameacc = Request.Form("nameacc")
Dim mail
mail = Request.Form("mail")
Dim phone 
phone = Request.Form("phone")
Dim addres
addres = Request.Form("addres")

Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO users (names,pass,nameacc,mail,phone,addres) VALUES ('" & names & "','" & pass & "','" & nameacc & "','" & mail & "','" & phone & "','" & addres & "')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Write(names)
         
%>

