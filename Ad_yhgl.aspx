<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_yhgl.aspx.cs" Inherits="Ad_yhgl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
<link href="css/style10.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 161px;
        }
        .style4
        {
            width: 158px;
        }
        .style5
        {
            width: 161px;
            height: 29px;
        }
        .style6
        {
            width: 158px;
            height: 29px;
        }
        .style7
        {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>用户管理</h2>
			</div>
			<table>
			<tr>
			<td><form action="">
				搜索：<asp:TextBox ID="TextBox1" runat="server" style="height:20px; font-size:13px" size="16"></asp:TextBox>
                <asp:Button 
                    ID="Button1" runat="server" Text="搜索" style="padding:3px" 
                    onclick="Button1_Click"/>
&nbsp;</form></td>
			</tr>
			</table>
				
			<div class="right_body">
				<table class="common_table">
<tr>
							<th class="style3">用户id</th>
							<th class="style4">用户密码</th>
							<th width="120">用户姓名</th>
							<th width="120">用户邮箱</th>
						</tr>
						
						<tr align="center">
							<td class="style5">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
							<td class="style6">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
							<td class="style7">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
							<td class="style7">
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
						</tr>
					<tr align="center">
							<td align="left" class="style3">
								<asp:DropDownList ID="DropDownList1" runat="server" class="form_select">
                                    <asp:ListItem>选择操作</asp:ListItem>
                                    <asp:ListItem>删除用户</asp:ListItem>
                                    <asp:ListItem>重置密码</asp:ListItem>
                                </asp:DropDownList>
								&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="执行操作" />
								</td>
							<td colspan="3" align="left">&nbsp;</td>
						</tr>
					
				</table>
				</div>
			<div class="right_bottom"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
    </form>
</body>
</html>
