<!-- #include file="inc/WebSvcURL.asp" -->
<%
	Dim sfzh,ksxm,MailAddress,IsOK
	sfzh = Request.Form("Sfzh")
	ksxm = Request.Form("Ksxm")
	MailAddress = Request.Form("MailAddress")
	sError = "�����һ�ʧ�ܣ��������֤�š������������ʼ���ַ�Ƿ���д��ȷ��"
	IsOK = objSOAPClient.getbackPassword(sfzh,ksxm,MailAddress) 
	if not IsOK then
    	Response.Redirect "Show_Error.asp?eid="&sError
		Response.End()
	else
%>
	<script language="javascript">
		alert("�ʼ��ѷ��������¼����������մ�������");
		document.location = 'index.asp';
	</script>
<%		
	end if
%>