<%
Function user()
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
Set rs =Server.CreateObject("ADODB.Recordset") 
On Error Resume Next
conn.Open "Provider=SQLOLEDB;Data Source=CUONG;Initial Catalog=fashion;User Id=sa;Password=123;"

If Err.Number <> 0 Then
      Response.Write "failure"
Else
    rs.Open "SELECT * FROM users", conn
       Response.Write (rs.length)
    If Not rs.EOF Then 
        
      Response.Write "["
        Do While Not rs.EOF
Response.Write "{_names_:_"& rs("names")&"_,_pass_:_"& rs("pass") &"_,_nameacc_:_"& rs("nameacc")&"_,_mail_:_"& rs("mail")&"_,_phone_:_"& rs("phone")&"_,_addres_:_"& rs("addres")&"_},"
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
