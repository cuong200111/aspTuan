

<%
Dim shipper
shipper = Request.Form("shipper")
Dim product
product = Request.Form("product")
Dim statusShip
statusShip =Request.Form("statusShip")

Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"
sql = "INSERT INTO shippeStatus (shipper,product,statusShip) VALUES ('" & shipper & "','" & product & "','" & statusShip & "')"
conn.Execute sql
conn.Close
Set conn = Nothing
       Response.Write "Thành công"
 %>
