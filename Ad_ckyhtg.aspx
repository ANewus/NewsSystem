<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_ckyhtg.aspx.cs" Inherits="Ad_ckyhtg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>查看用户投稿</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>查看用户投稿</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
                    <tr>
                        <td align="center">搜索投稿</td>
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
                                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="yhid" HeaderText="投稿用户id" SortExpression="yhid" />
                                        <asp:BoundField DataField="tgbt" HeaderText="投稿标题" 
                                            SortExpression="tgbt" />
                                            <asp:BoundField DataField="tgtime" HeaderText="投稿时间" 
                                            SortExpression="tgtime" />
                                            <asp:ButtonField ButtonType="Button" CommandName="xuanze" Text="查看" />
                                    </Columns>
                                </asp:GridView>
                               
							</td>
                            </tr>
                            <tr>
							<td width="80" align="center">编号</td>
							<td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</td>
						</tr>
                                      <tr>
							<td width="80" align="center">文章标题</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text" Height="30px" 
                                    Width="517px"></asp:TextBox>
							</td>
						</tr>
                        <tr>
							<td align="center">文章内容</td>
							<td>
                                <asp:TextBox ID="TextBox3" runat="server" class="form_text" Height="230px" 
                                    TextMode="MultiLine" Width="516px"></asp:TextBox>
							&nbsp;</td>
						</tr>
                                                          <tr>
							<td align="center">配图</td>
							<td>
                                <asp:Image ID="Image1" runat="server" Height="199px" Width="381px" />
                            </td>
						</tr>
                                                <tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="通过投稿" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button1_Click" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:Button ID="Button2" runat="server" Text="删除投稿" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button2_Click" />
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
        SelectCommand="SELECT * FROM [tougao]">
    </asp:SqlDataSource>
</body>
</html>
