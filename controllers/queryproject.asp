
<%
Function arr()
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
Set rs =Server.CreateObject("ADODB.Recordset") 
On Error Resume Next
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=fashion;User Id=sa;Password=123;"

If Err.Number <> 0 Then
      Response.Write "failure"
Else
    rs.Open "SELECT * FROM product", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
        
      Response.Write "["
        Do While Not rs.EOF
Response.Write "{_id_:_"& rs("id")&"_,_category_:_"& rs("category") &"_,_datas_:"& rs("datas")&",_url_:_"& rs("img") &"_,_title_:_"& rs("title") &"_,_price_:_"& rs("price") &"_,_createdAt_:_"& rs("createdAt") &"_,_sale_:_"& rs("sale") &"_},"
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


Function arrLibrary()
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
Set rs =Server.CreateObject("ADODB.Recordset") 
On Error Resume Next
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=fashion;User Id=sa;Password=123;"

If Err.Number <> 0 Then
      Response.Write "failure"
Else
    rs.Open "SELECT * FROM libraryproduct", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
        
      Response.Write "["
        Do While Not rs.EOF
Response.Write "{_ids_:_"& rs("ids")&"_,_colors_:_"& rs("colors") &"_,_imgs_:_"& rs("imgs") &"_},"
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