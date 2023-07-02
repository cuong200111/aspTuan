

<%
Dim idproduct
idproduct = Request.Form("idproduct")
Dim account
account = Request.Form("account")
Dim imgproduct
imgproduct = Request.Form("imgproduct")
Dim fullname
fullname = Request.Form("fullname")
Dim addres
addres = Request.Form("addres")
Dim colorVi
colorVi = Request.Form("colorVi")
Dim colorEn
colorEn = Request.Form("colorEn")
Dim size
size = Request.Form("size")
Dim phones
phones = Request.Form("phones")
Dim quatity
quatity = CInt(Request.Form("quatity"))
Dim methodshipper
methodshipper = Request.Form("methodshipper")
Dim priceProduct
priceProduct = Request.Form("priceProduct")
Dim titleProduct
titleProduct = Request.Form("titleProduct")
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO cartUser (idproduct,account,fullname,addres,imgproduct,colorEn,colorVi,size,quatity,methodshipper,phones,priceProduct,titleProduct) VALUES ('" & idproduct & "','" & account & "','" & fullname & "','" & addres & "','" & imgproduct & "','" & colorEn & "','" & colorVi & "','" & size & "','" & quatity & "','" & methodshipper & "','" & phones & "','"&priceProduct&"','"&titleProduct&"')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Write "Đặt hàng thành công"
%>

 
