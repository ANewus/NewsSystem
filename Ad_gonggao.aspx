<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_gonggao.aspx.cs" Inherits="Ad_gonggao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<link rel="stylesheet" href="css/global.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/style11.css" type="text/css">
    <link rel="stylesheet" href="css/mainstyle.css">
        <link rel="stylesheet" href="css/StyleSheet5.css">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet3.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet4.css" />
    <style type="text/css">
        .style1
        {
            height: 32px
        }
        .style2
        {
            height: 30px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--顶部-->
<div id="info"></div>
<div id="top">
    <div class="top-main" style=" font-size:12px; font-family:"微软雅黑"; margin-top:10px;">
        <p class="left" >葫芦，一个有用的网站。</p>
        <ul id="dl">         
            <li>
        <a href="youdaikaifa.aspx" style="font-size:16px;color:#F90; font-weight:700;font-family:"微软雅黑";">投稿</a>
        </li>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                <li> 
              <a href="register.aspx" target="_blank" style="font-size:16px;color:#090; font-weight:700;font-family:"微软雅黑";">注册</a>
        </li>
             <li>
        <a href="Login.aspx" target="_blank" style="font-size:16px;color:#F00; font-weight:700;font-family:"微软雅黑";">登录</a>
        </li>
                </asp:View>
                <asp:View ID="View2" runat="server">
                <li>
                <a href="index.html" target="_blank" style="font-size:16px;color:#090; font-weight:700;font-family:"微软雅黑";">用户中心</a>
        </li>
                <li>
        <a href="tuichu.aspx" target="_blank" style="font-size:16px;color:#F00; font-weight:700;font-family:"微软雅黑";">退出</a>
        </li> 
        <li>,&nbsp;</li>
                <li>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.html" 
                        font-size="16px" color="#F00" font-weight="700">[HyperLink1]</asp:HyperLink>
                    </li>
                    <li>欢迎&nbsp;</li>
                </asp:View>
            </asp:MultiView>
        </ul>
    </div>
</div>

            <hr>
<!--顶部结束-->
        <div align="center">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/mainbiaoti.png" 
                Height="182px" Width="1197px" />
            <br />
        </div>
        <!--导航-->
<div class="menu">
		<ul class="navul">
			<li><a href="main.aspx">首页</a></li>
 

			<li><a href="liaotianshi.aspx" target="_blank">站内聊天室</a>
				
			</li>
 
			<li><a href="yhfk.aspx" target="_blank">用户反馈</a>
			</li>
            <li><a href="liuyan.aspx" target="_blank">留言板</a>
			</li>
 <li><a href="https://jq.qq.com/?_wv=1027&k=5u6mZda" 
                target="_blank">交流QQ群</a></li>
                <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=770041996&amp;site=qq&amp;menu=yes" target=_blank>联系作者</a>
				
			</li>

            <li><a href="youdaikaifa.aspx" target="_blank">更多功能</a>
				
			</li>
		</ul>
	</div>

		<script type="text/javascript">
		    $(function () {
		        $(".navul>li").hover(function () {
		            $(this).children('ul').stop(true, true).show(300);
		        }, function () {
		            $(this).children('ul').stop(true, true).hide(300);
		        })
		    })
</script>
<!--导航结束-->
    <div>
    <h1 align="right">平台公告</h1>
        </div>
        <div class="main-wrap">
<div class="page-breadcrumb"> 当前位置：<asp:Label ID="Label4" runat="server"></asp:Label>
            </div>
<div class="page-content clearfix">
<div class="page-content-intro main-article">
  <div class="content-wrap">
      <table class="w200">
          <tr>
              <td class="style1">
                  <h1 align="center"><asp:Label ID="Label1" runat="server"></asp:Label></h1>
              </td>
          </tr>
          <tr>
              <td class="style2">
                  发布时间：<asp:Label ID="Label2" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label3" runat="server"></asp:Label>
              </td>
          </tr>
      </table>
  </div>
  <div class="down-url-wrap">
    <h3 class="tit">
  </div>
<div><div class="tip-bar mt20 clearfix" style="margin:10px 0px 0px;padding:0px;outline:0px;zoom:1;height:35px;line-height:35px;background-color:#dcdcdc;color:#0000ff;font-family:微软雅黑, 黑体, Arial;"><span class="tit" style="margin:0px 10px 0px 0px;padding:0px 5px;outline:0px;zoom:1;display:block;height:35px;background-color:#338FCC;color:#ffffff;float:left;">温馨提示</span>请认真读取公告！</div>
</div>
	</div>
   <div class="page-content-sidebar"> 
 <div class="iqshwad-comm iqshwad-ad-r"> <table style="border-collapse:separate;font-family:'helvetica neue', 'hiragino sans gb', stheiti, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'WenQuanYi Micro Hei', sans-serif;border:2px #FFFFFF;width:300px;height:250px;background:#FFFFFF;">
	<tbody>
		<tr>
			<td align="center" style="font-size:14px;margin:0px;padding:15px 0px;color:blue;">
				<asp:Image ID="Image1" runat="server" Height="175px" Width="291px" 
                    ImageUrl="~/img/guat.png" />
			</td>
		</tr>
	</tbody>
     </table>


</div>
       <div class="news-comm">
           <h3 class="title">
               &nbsp;</h3>
           <ul class="list">
               <ul>
                   <li><i </li>
               </ul>
           </ul>
       </div>
       <div class="news-comm">
           <h3 class="title">
               &nbsp;</h3>
       </div>
	</div>
</div>
</div>
    </div>
    </form>
</body>
</html>
