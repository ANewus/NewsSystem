<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_zhgl.aspx.cs" Inherits="Ad_zhgl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员账户管理</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
								<input type="hidden" name="a_purview" value="z_z" />
    <div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body"> 
		<div id="right">
			<div class="right_title">
				<h2>添加管理员账户</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
	
							<td width="80" align="center" class="must_input">用户名</td>
							<td>
                                <asp:TextBox ID="TextBox1" runat="server" class="form_text"></asp:TextBox>
                            </td>
						</tr>
						<tr>
							<td align="center" class="must_input">密码</td>
							<td>
                                <asp:TextBox ID="TextBox2" runat="server" class="form_text"></asp:TextBox>
                            </td>
						</tr>
						<tr>
							<td align="center" class="must_input">确认密码</td>
							<td>
                                <asp:TextBox ID="TextBox3" runat="server" class="form_text"></asp:TextBox>
                            </td>
						</tr>
						<tr>
							<td align="center">&nbsp;</td>
							<td>
				<asp:Button ID="Button1" runat="server" Text="添加账户" class="form_submit" 
                                    style="background:url(img/submit_button.jpg) no-repeat;" 
                                    onclick="Button1_Click"  />
							</td>
						</tr>
				</table>
			</div>
			<div class="right_bottom"></div>
			<div class="right_title">
				<h2>管理账户</h2>
			</div>
			<div class="right_body">
				<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="ad_id" DataSourceID="SqlDataSource1" 
                    Height="103px" PageSize="5" Width="815px">
                    <Columns>
                        <asp:BoundField DataField="ad_id" HeaderText="管理员id" ReadOnly="True" 
                            SortExpression="ad_id" />
                        <asp:BoundField DataField="ad_pwd" HeaderText="管理员密码" SortExpression="ad_pwd" />
                        <asp:CommandField HeaderText="操作" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
			</div>
			<div class="right_bottom"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="content_bottom"></div>
</div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:hulu %>" 
                                    DeleteCommand="DELETE FROM [Admin] WHERE [ad_id] = @ad_id" 
                                    InsertCommand="INSERT INTO [Admin] ([ad_id], [ad_pwd]) VALUES (@ad_id, @ad_pwd)" 
                                    SelectCommand="SELECT * FROM [Admin]" 
                                    UpdateCommand="UPDATE [Admin] SET [ad_pwd] = @ad_pwd WHERE [ad_id] = @ad_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ad_id" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ad_id" Type="String" />
                                        <asp:Parameter Name="ad_pwd" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="ad_pwd" Type="String" />
                                        <asp:Parameter Name="ad_id" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
    </form>
</body>
</html>
