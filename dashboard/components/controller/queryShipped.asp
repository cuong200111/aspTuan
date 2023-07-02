<%
Function arr()
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
Set rs =Server.CreateObject("ADODB.Recordset") 
On Error Resume Next
conn.Open "Provider=SQLOLEDB;Data Source=LAPTOP-UHRJ0SA1;Initial Catalog=fashion;User Id=sa;Password=123;"

If Err.Number <> 0 Then
      Response.Write "failure"
Else
    rs.Open "SELECT * FROM shippeStatus", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
        
      Response.Write "["
        Do While Not rs.EOF
Response.Write "{_product_:_"& rs("product")&"_,_shipper_:_"& rs("shipper")&"_,_statusShip_:_"& rs("statusShip") &"_},"
            rs.MoveNext
        Loop
        Response.Write "]"
     Else
        Response.Write "failure"
    End If
End If
conn.Close
Set conn = Nothing
End Function

%>