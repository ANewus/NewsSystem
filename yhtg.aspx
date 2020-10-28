<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yhtg.aspx.cs" Inherits="yhtg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户投稿</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>投稿文章</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
                    		<tr>
							<td width="80" align="center">用户ID</td>
							<td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</td>
						</tr>
                        <tr>
							<td width="80" align="center">文章标题</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text" Height="30px" 
                                    Width="517px"></asp:TextBox>
							    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="标题不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
							</td>
						</tr>
                        <tr>
							<td width="80" align="center">文章正文</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text" Height="230px" 
                                    TextMode="MultiLine" Width="516px"></asp:TextBox>
							&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="内容不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
						</tr>
                        						</tr>
                        		<tr>
							<td width="80" align="center">配图</td>
							<td>
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="FileUpload1" ErrorMessage="配图不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
							</td>
						</tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="确认投稿" class="form_submit" 
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
