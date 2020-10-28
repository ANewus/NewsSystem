<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员注册</title>
    <link rel="stylesheet" type="text/css" href="css/ucenter.css" />
</head>
<body>
<div class="xzx">
<div class="regMain border fff wp mt10">
    <div class="regLeft z">
        <h1>欢迎加入</h1>
         <form id="form1" runat="server">

        <table border="0" width="630" cellpadding="0" cellspacing="0">
          <tr class="inOpt">
            <td class="inText">用户ID：</td>
            
             <td class="inInput">
                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="250px"></asp:TextBox>
                </div></td>
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
            <td class="inText">确认密码：</td>
            <td class="inInput">
                <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="250px"></asp:TextBox>
              </td>
            <td class="inputTip"><div id="checkRepasswd"></div></td>
          </tr>
          <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr class="inOpt">
            <td class="inText">姓名：</td>
            <td class="inInput">
                <asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="250px"></asp:TextBox>
              </td>
            <td class="inputTip"><div id="Div1"></div></td>
          </tr>
                    <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr class="inOpt">
            <td class="inText">邮箱：</td>
            <td class="inInput">
                <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="250px"></asp:TextBox>
              </td>
            <td class="inputTip"><div id="checkNick"></div></td>
          </tr>
               <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
                  <tr class="inOpt">
            <td class="inText">验证码：</td>
            <td class="inInput keyInput">&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><img src="viewImg.aspx" onClick="javascript:this.src='viewImg.aspx?tm='+Math.random()" style=" width:85px; height:36px;background:#FFF; cursor:pointer;" alt="点击更换" title="点击更换" />

            <td class="inputTip"><div id="checkKey">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </div></td>
          </tr>
          <tr class="spaceOpt">
            <td></td>
            <td></td>
            <td></td>
          </tr>
                  <tr>
            <td></td>
            <td class="inSubmit">
                <asp:Button ID="Button1" runat="server" Text="注册" onclick="Button1_Click" />
                      </td>
            <td></td>
          </tr>
        </table>
        </form>
    </div>
    <div class="regRight y">
        <p>已有帐号,直接登录</p>
        <a href="Login.aspx" class="loginBtn">登　录</a>
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
