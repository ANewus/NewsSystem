<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yhckly.aspx.cs" Inherits="yhckly" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>编辑留言</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content_main">
	<div id="content_title"> </div>
	<div id="content_body">
		<div id="right">
			<div class="right_title">
				<h2>编辑留言</h2>
			</div>
			<div class="right_body">
				<table class="common_table">
					<form id="form1" runat="server">
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
                                        <asp:BoundField DataField="lynr" HeaderText="留言内容" SortExpression="lynr" />
                                        <asp:BoundField DataField="lytime" HeaderText="留言时间" 
                                            SortExpression="lytime" />
                                             <asp:ButtonField ButtonType="Button" CommandName="xuanze" Text="选择" />
                                    </Columns>
                                </asp:GridView>
                               
							</td>
                            </tr>
                        <tr>
							<td align="center" width="80">内容</td>
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
				<asp:Button ID="Button2" runat="server" Text="删除留言" class="form_submit" 
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
        SelectCommand="SELECT * FROM [liuyan]">
    </asp:SqlDataSource>
</body>
</html>
