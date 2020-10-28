<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_ckyhly.aspx.cs" Inherits="Ad_ckyhly" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>查看用户留言</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>查看用户留言</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
                    <tr>
                        <td align="center">搜索留言</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text" Height="23px" 
                                    Width="141px" placeholder="输入关键字"></asp:TextBox>
							&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="搜索" style="padding:3px" 
                                    onclick="Button3_Click" CausesValidation="False"/>
							&nbsp;<asp:Button ID="Button4" runat="server" Text="显示全部" style="padding:3px" 
                                    onclick="Button4_Click" CausesValidation="False"/>
							    &nbsp;&nbsp;&nbsp; (此处为搜索用户的id)</td>
                            </tr>
                        <tr>
                        <td align="center">&nbsp;</td>
							<td class="right_body">
                               
							    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="126px" 
                                    PageSize="2" Width="526px" 
                                     onrowcommand="GridView1_RowCommand" DataKeyNames="id">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="留言编号" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="yh_id" HeaderText="用户id" SortExpression="yh_id" />
                                        <asp:BoundField DataField="lynr" HeaderText="留言内容" SortExpression="lynr" />
                                        <asp:BoundField DataField="lytime" HeaderText="留言时间" 
                                            SortExpression="lytime" />
                                            <asp:ButtonField ButtonType="Button" CommandName="xuanze" Text="回复" />
                                    </Columns>
                                </asp:GridView>
                               
							</td>
                            </tr>
                            <tr>
							<td width="80" align="center">留言编号</td>
							<td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
							</td>
						</tr>
                            <tr>
							<td width="80" align="center">用户id</td>
							<td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</td>
						</tr>
                        <tr>
							<td align="center">留言内容</td>
							<td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
							</td>
						</tr>
                        <tr>
							<td align="center">内容回复</td>
							<td>
                                <asp:TextBox ID="TextBox3" runat="server" class="form_text" Height="230px" 
                                    TextMode="MultiLine" Width="516px"></asp:TextBox>
							</td>
						</tr>
                                                <tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="回复" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button1_Click" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hulu %>" 
        SelectCommand="SELECT * FROM [liuyan] ORDER BY [lytime] DESC">
    </asp:SqlDataSource>
</body>
</html>
