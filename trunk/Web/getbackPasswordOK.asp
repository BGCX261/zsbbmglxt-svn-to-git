<!-- #include file="inc/WebSvcURL.asp" -->
<%
	Dim sfzh,ksxm,MailAddress,IsOK
	sfzh = Request.Form("Sfzh")
	ksxm = Request.Form("Ksxm")
	MailAddress = Request.Form("MailAddress")
	sError = "密码找回失败！请检查身份证号、考生姓名、邮件地址是否填写正确！"
	IsOK = objSOAPClient.getbackPassword(sfzh,ksxm,MailAddress) 
	if not IsOK then
    	Response.Redirect "Show_Error.asp?eid="&sError
		Response.End()
	else
%>
	<script language="javascript">
		alert("邮件已发出，请登录接收邮箱查收处理结果！");
		document.location = 'index.asp';
	</script>
<%		
	end if
%>