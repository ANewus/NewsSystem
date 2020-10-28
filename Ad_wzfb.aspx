<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_wzfb.aspx.cs" Inherits="Ad_wzfb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>发布文章</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>发布文章</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
						<tr>
							<td width="80" align="center">标题</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text" Height="30px" 
                                    Width="517px"></asp:TextBox>
							</td>
						</tr>
                        <tr>
							<td align="center">内容</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text" Height="230px" 
                                    TextMode="MultiLine" Width="516px"></asp:TextBox>
							&nbsp;</td>
						</tr>
                        		<tr>
							<td width="80" align="center">图片</td>
							<td>
                               <asp:FileUpload ID="FileUpload1" runat="server" />
							</td>
						</tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="确认发布" class="form_submit" 
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
