<!-- #include file="inc/WebSvcURL.asp" --><HEAD><TITLE>�����Ƽ�ʦ����ѧר����������--�һ�����</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/main_right.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="images/ShowProcessBar.js"></SCRIPT>
<SCRIPT language=javascript>
function check() 
{
	var str;
	str1=document.form1.Ksxm.value;
	str2=document.form1.Sfzh.value;
	str3=document.form1.MailAddress.value;
	if (str1=="")
	{
    	alert("������������Ϊ�գ�");
		document.form1.Ksxm.focus();
    	return false;
  	}
	
	if (str2=="")
	{
    	alert("���֤�Ų���Ϊ�գ�");
		document.form1.Sfzh.focus();
    	return false;
  	}

	if ((str2.length!=18) && (str2.length!=15))
	{
    	alert("���֤��λ�����ԣ�");
		document.form1.Sfzh.focus();
    	return false;
  	}

	if (str3.length=="")
	{
    	alert("�����ַ����Ϊ��");
		document.form1.MailAddress.focus();
    	return false;
  	}

}
</SCRIPT>

<META content="MSHTML 6.00.3790.4807" name=GENERATOR>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</HEAD>
<%
Dim UserName
%>
<!--#include file= "top.asp"-->


<form action="getbackPasswordOK.asp" method="Post" name="form1" id="form1" onSubmit="return check();">
<table width="1000" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#A8D9EC" class="bx">
  <tr>
    <td colspan="4" align="left" class="bg">����дҪ�һ�����ʱ�ر�����Ϣ</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">���֤�ţ�</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="Sfzh" type="text" id="Sfzh" maxlength="18" />
      (*)
        
�˴���д����ע��ʱ�����֤��</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">����������</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="Ksxm" type="text" id="Ksxm" maxlength="50">
      (*) �˴���д��������ʵ����</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">�ʼ���ַ��</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="MailAddress" type="text" id="MailAddress" maxlength="50"/>
      (*) �˴���д���ڽ����һص�����ʱ�������ַ���磺abc@163.com</td>
    </tr>
  <tr>
    <td height="30" colspan="4" align="left" bgcolor="#FFFFFF" class="tr1">����ע�⣺�� * ��Ϊ��Ҫ����!</td>
    </tr>
	    
		 
  <tr>
    <td colspan="4" bgcolor="#FFFFFF"><p>
      ����������������������������������
          <input name="Submit" type="submit" class="aniu" value="�һ�����" />
      </td>
    </tr>
</table>
</form>
<!--#include file= "bottom.asp"-->
