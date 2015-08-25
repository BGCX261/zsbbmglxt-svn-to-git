<!-- #include file="inc/WebSvcURL.asp" --><HEAD><TITLE>江西科技师范大学专升本报名网--找回密码</TITLE>
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
    	alert("考生姓名不能为空！");
		document.form1.Ksxm.focus();
    	return false;
  	}
	
	if (str2=="")
	{
    	alert("身份证号不能为空！");
		document.form1.Sfzh.focus();
    	return false;
  	}

	if ((str2.length!=18) && (str2.length!=15))
	{
    	alert("身份证号位数不对！");
		document.form1.Sfzh.focus();
    	return false;
  	}

	if (str3.length=="")
	{
    	alert("邮箱地址不能为空");
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
    <td colspan="4" align="left" class="bg">请填写要找回密码时必备的信息</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">身份证号：</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="Sfzh" type="text" id="Sfzh" maxlength="18" />
      (*)
        
此处填写考生注册时的身份证号</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">考生姓名：</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="Ksxm" type="text" id="Ksxm" maxlength="50">
      (*) 此处填写考生的真实姓名</td>
    </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="tr1">邮件地址：</td>
    <td colspan="3" bgcolor="#FFFFFF" class="tr1"><input name="MailAddress" type="text" id="MailAddress" maxlength="50"/>
      (*) 此处填写用于接收找回的密码时的邮箱地址，如：abc@163.com</td>
    </tr>
  <tr>
    <td height="30" colspan="4" align="left" bgcolor="#FFFFFF" class="tr1">　　注意：带 * 的为必要内容!</td>
    </tr>
	    
		 
  <tr>
    <td colspan="4" bgcolor="#FFFFFF"><p>
      　　　　　　　　　　　　　　　　　
          <input name="Submit" type="submit" class="aniu" value="找回密码" />
      </td>
    </tr>
</table>
</form>
<!--#include file= "bottom.asp"-->
