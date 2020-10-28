<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_xggg.aspx.cs" Inherits="Ad_xggg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>编辑文章</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>编辑公告</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
                    <tr>
                        <td align="center">搜索公告</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text" Height="23px" 
                                    Width="141px" placeholder="输入关键字"></asp:TextBox>
							&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="搜索" style="padding:3px; height: 26px;" 
                                    onclick="Button3_Click" CausesValidation="False"/>
							&nbsp;<asp:Button ID="Button4" runat="server" Text="显示全部" style="padding:3px" 
                                    onclick="Button4_Click" CausesValidation="False"/>
							&nbsp;&nbsp;&nbsp;&nbsp; (此处为搜索标题的关键字)</td>
                            </tr>
                        <tr>
                        <td align="center">&nbsp;</td>
							<td class="right_body">
                               
							    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="126px" 
                                    PageSize="4" Width="526px" 
                                     onrowcommand="GridView1_RowCommand" DataKeyNames="id">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="ggbt" HeaderText="公告标题" SortExpression="ggbt" />
                                        <asp:BoundField DataField="ggsj" HeaderText="时间" SortExpression="ggsj" />
                                        <asp:ButtonField ButtonType="Button" CommandName="xuanze" Text="选择" />
                                    </Columns>
                                </asp:GridView>
                               
							</td>
                            </tr>
                            <tr>
							<td width="80" align="center">标题</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text" Height="30px" 
                                    Width="517px"></asp:TextBox>
							    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="标题不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
							</td>
						</tr>
                        <tr>
							<td align="center">内容</td>
							<td>
                                <asp:TextBox ID="TextBox3" runat="server" class="form_text" Height="230px" 
                                    TextMode="MultiLine" Width="516px"></asp:TextBox>
							&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="内容不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
						</tr>
                        
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="确认修改" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button1_Click" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:Button ID="Button2" runat="server" Text="删除公告" class="form_submit" 
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
        SelectCommand="SELECT * FROM [gonggao]">
    </asp:SqlDataSource>
</body>
</html>
