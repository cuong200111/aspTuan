<%@ LANGUAGE="VBSCRIPT" CODEPAGE="1252" ENABLESESSIONSTATE="FALSE" LCID="1046" %>
<!--#include file="upload.lib.asp"-->
<% Response.Charset = "UTF-8"

Dim Form : Set Form = New ASPForm
Server.ScriptTimeout = 1440 
Const MaxFileSize = 10240000 
If Form.State = 0 Then

	For each Key in Form.Texts.Keys
		Response.Write "Thêm thành công: " & Key & " = " & Form.Texts.Item(Key) & "<br />"
	Next

	For each Field in Form.Files.Items
		Field.SaveAs Server.MapPath(".") & "\upload\" & Field.FileName
		Response.Write "Bạn: " & Field.FileName & " Thêm file thành công. <br />"
	Next
End If
%>
