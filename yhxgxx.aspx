<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yhxgxx.aspx.cs" Inherits="yhxgxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户修改账户信息</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>用户修改账户信息</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
						<tr>
							<td width="80" align="center">用户名</td>
							<td>
							    <asp:Label ID="Label1" runat="server"></asp:Label>
							</td>
						</tr>
						
						<tr>
							<td align="center">姓名</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text"></asp:TextBox>
							&nbsp;</td>
						</tr>
                        						<tr>
							<td align="center">邮箱</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text"></asp:TextBox>
							</td>
						</tr>
				<tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="确认修改" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button1_Click" />
							</td>
						</tr>
					</form>
				</table>
			</div>
			<div class="right_bottom"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
</body>
</html>
