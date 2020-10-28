<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登陆</title>
<link rel="stylesheet" type="text/css" href="css/ucenter.css" />
</head>
<body>

<div class="xzx">
<!--主体内容-->
<div class="regMain border fff wp mt10 loginMain">
    <div class="regLeft z">
        <h1>登录</h1>
        <form id="form1" runat="server">
        <table border="0" width="630" cellpadding="0" cellspacing="0">
          <tr class="inOpt">
            <td class="inText">账号：</td>
            <td class="inInput">
                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="250px"></asp:TextBox>
                </td>
            <td class="inputTip"><div id="checkEmail"></div></td>
          </tr>
          <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr class="inOpt">
            <td class="inText">密码：</td>
            <td class="inInput">
                <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="250px"></asp:TextBox>
                </td>
            <td class="inputTip"><div id="checkPasswd"></div></td>
          </tr>
   <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr class="inOpt">
            <td class="inText">用户类型</td>
            <td >

                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Height="25px" Width="184px">
                    <asp:ListItem Value="普通用户" Selected="True">普通用户</asp:ListItem>
                    <asp:ListItem>管理员</asp:ListItem>
                </asp:RadioButtonList>

            <td class="inputTip"><div id="checkKey">
                </div></td>
          </tr>
          <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr class="inOpt">
            <td class="inText">验证码</td>
            <td class="inInput keyInput">&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><img src="viewImg.aspx" onClick="javascript:this.src='viewImg.aspx?tm='+Math.random()" style=" width:85px; height:36px;background:#FFF; cursor:pointer;" alt="点击更换" title="点击更换" />

            <td class="inputTip"><div id="Div1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </div></td>
          </tr>

          <tr class="inSpace">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="inSubmit">
                <asp:Button ID="Button1" runat="server" Text="登陆" onclick="Button1_Click1" /><span class="z"></span>
              </td>
            <td></td>
          </tr>
          <tr class="inSpace">
            <td></td>
            <td><a href="zhmm.aspx" class="y">忘记密码</a></td>
            <td></td>
          </tr>
        </table>
        </form>
    </div>
    <div class="regRight y">
        <p>还没有帐号？</p>
        <a href="register.aspx" class="loginBtn">注　册</a>
    </div>
</div>
</div>
<!--页脚-->
<div id="footer">
  <div class="foot wp">@版权所有 桂林航天工业学院 2017070030128 联系作者 <a 
                        href="http://wpa.qq.com/msgrd?v=3&amp;uin=770041996&amp;site=qq&amp;menu=yes" 
                        target="_blank"><img alt="点击这里给我发消息" border="0" 
                        src="http://wpa.qq.com/pa?p=2:770041996:51" title="点击这里给我发消息" /></a></div>
</div>
</body>
</html>
