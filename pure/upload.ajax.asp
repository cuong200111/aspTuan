<%@ LANGUAGE="VBSCRIPT" CODEPAGE="1252" ENABLESESSIONSTATE="FALSE" LCID="1046" %>
<!--#include file="upload.lib.asp"-->
<% Response.Charset = "UTF-8"

Dim Form : Set Form = New ASPForm
Server.ScriptTimeout = 1440 ' Limite de 24 minutos de execu��o de c�digo, o upload deve acontecer dentro deste tempo ou ent�o ocorre erro de limite de tempo.
Const MaxFileSize = 10240000 ' Bytes. Aqui est� configurado o limite de 100 MB por upload (inclui todos os tamanhos de arquivos e conte�dos dos formul�rios).
If Form.State = 0 Then

	For each Key in Form.Texts.Keys
		Response.Write "thêm: " & UTF8_ANSI(Key) & " = " & UTF8_ANSI(Form.Texts.Item(Key)) & vbcrlf
	Next

	For each Field in Form.Files.Items
		' # Field.Filename : Nome do Arquivo que chegou.
		' # Field.ByteArray : Dados bin�rios do arquivo, �til para subir em blobstore (MySQL).
		Field.SaveAs Server.MapPath(".") & "\upload\" & Field.FileName
		Response.Write "Thêm: " & UTF8_ANSI(Field.FileName) & " thành công" & vbcrlf
	Next
End If

function UTF8_ANSI(x)

    Cod = second(now()) + minute(now())
    x=replace(x,chr(226)&chr(128)&chr(156),chr(34))
    x=replace(x,chr(226)&chr(128)&chr(157),chr(34))
    x=replace(x,chr(226)&chr(128)&chr(147),chr(150))
    for ife = 1 to 191 : x=replace(x,chr(195)&chr(ife),chr(ife+64)) : next
    UTF8_ANSI=x
end function


%>
