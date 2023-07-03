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
    rs.Open "SELECT * FROM cartUser ", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
      Response.Write "["
        Do While Not rs.EOF
          Dim imgUrl
          If Len(rs("imgproduct")) = 0 Then
                 imgUrl = "#"
          Else
        imgUrl = rs("imgproduct")
          End If
Response.Write "{_idproduct_:_"& rs("idproduct")&"_,_account_:_"& rs("account")&"_,_fullname_:_"& rs("fullname") &"_,_addres_:_"& rs("addres") &"_,_phones_:_"& rs("phones") &"_,_imgproduct_:_"& imgUrl &"_,_colorEn_:_"& rs("colorEn") &"_,_colorVi_:_"& rs("colorVi") &"_,_size_:_"& rs("size") &"_,_quatity_:_"& rs("quatity") &"_,_methodshipper_:_"& rs("methodshipper") &"_,_priceProduct_:_"& rs("priceProduct") &"_,_titleProduct_:_"& rs("titleProduct") &"_},"
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
