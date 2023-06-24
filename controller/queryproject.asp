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
    rs.Open "SELECT * FROM product", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
        
      Response.Write "["
        Do While Not rs.EOF
Response.Write "{_id_:_"& rs("id")&"_,_category_:_"& rs("category") &"_,_url_:_"& rs("img") &"_,_title_:_"& rs("title") &"_,_price_:_"& rs("price") &"_,_createdAt_:_"& rs("createdAt") &"_},"
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