﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>搜索页</title>
<link rel="stylesheet" href="css/global.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/style11.css" type="text/css">
    <link rel="stylesheet" href="css/mainstyle.css">
        <link rel="stylesheet" href="css/StyleSheet5.css">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet3.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet4.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--顶部-->
<div id="info"></div>
<div id="top">
    <div class="top-main" style=" font-size:12px; font-family:"微软雅黑"; margin-top:10px;">
 <table>
    <td style="width:280px;">
        <p class="left" >桂航体育新闻平台</p>
        </td>
        <td style="width:340px;" align="left">
           <asp:TextBox ID="TextBox1" runat="server"  placeholder="搜一下他不香吗？ "  ></asp:TextBox>
            <asp:Button ID="Button1"
                runat="server" Text="搜索" Height="27px" 
                                    Width="40px" onclick="Button1_Click1"/>
        

        </td>
        <td style="width:300px;">
        </td>
        <td style="width:280px;" align="right">
        <ul id="dl">         
            <li>
        <a href="yhtg.aspx" style="font-size:16px;color:#F90; font-weight:700;font-family:"微软雅黑";">投稿</a>
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
         </td>
    </table>
    </div>
</div>

            <hr>
<!--顶部结束-->
        <div align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/mainbiaoti.png" 
                Height="102px" Width="1197px" />
            <br />
        </div>
        <!--导航-->
        <br />
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
<br />
<div align="center">
<table class="w500">

            <tr>
    
                <td style="width: 695px; height: 400px" colspan="2">
                <div class="cat-sidebar">
                   <div class="title">
				<h2>搜索结果</h2>
                </div></div>

                                                        <asp:DataList ID="DataList1" runat="server" 
                        DataSourceID="SqlDataSource1">
                                                            <ItemTemplate>
                                                                <table class="w">
                                                                    <tr>
                                                                        <td align="left" class="style2" style="width: 670px">
                                                                            <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("biaoti") %>' 
                                                                                NavigateUrl='<%# Eval("id", "Ad_wenzhang.aspx?a={0}") %>'></asp:HyperLink>
                                                                        </td>
                                                                        <td Height="28px" style="width: 150px" Width="30px">
                                                                            &nbsp;</td>
                                                                        <td align="center" style="width: 150px">
                                                                            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                                                                        </td>
                                                                    </tr>
                                                                </table>
<br />
                                                            </ItemTemplate>
                    </asp:DataList>

                    <br />
                    <hr />
                </td>
   <td colspan="2" style="width: 400px; height: 400px" align="center">
   
   <img src="img/guat.png" />


                   </td>

            </tr>

            </table>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hulu %>" 
            SelectCommand="SELECT * FROM [wenzhang] ORDER BY [time] DESC">
        </asp:SqlDataSource>
 
        <!--脚部-->
 <div class="links main1200 dis-top">

    <div class="fr">
         <a href="https://www.xuexi.cn/" target="_blank"><img src="img/xxqg.jpg"
                        border="0" width="257" height="83"/></a>
<a href="https://pgzt.guat.edu.cn/" target="_blank"><img src="img/pgzt.jpg"
                        border="0"  width="257" height="83"/></a>
                        <a href="http://www.yiban.cn/school/index/id/5000178" target="_blank"><img src="img/ghpt.jpg"
                        border="0"  width="257" height="83"/></a>
                         <a href="http://bwcx.guat.edu.cn/" target="_blank"><img src="img/bwcx.jpg"
                        border="0"  width="257" height="83"/></a>
    </div>
<!--    <div class="btn">
        <span class="btn-t"></span>
        <span class="btn-b"></span>
    </div>-->
     <asp:Image ID="Image14" runat="server" ImageUrl="~/img/yqlj.png" />
<hr /></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30"></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color:#46505b; " class="dis-top">
  <tr>
    <td>    <div class="foot dis-top"><div class="main1200">
    
        <p style="font-family:Microsoft YaHei; font-size:16px; ">
 <a href="youdaikaifa.aspx" target="_blank">免费声明</a>|
 <a href="youdaikaifa.aspx" target="_blank">广告合作</a>|
 <a href="youdaikaifa.aspx"" target="_blank">更多精彩</a>
</p>
        
        <p style="font-family:Microsoft YaHei; font-size:16px; ">Copyright &copy; 2018-2019 <a href="" target="_blank" style="font-family:Microsoft YaHei;">葫芦</a>ALL Right severed<a href="http://www.guat.edu.cn/" rel="nofollow" target="_blank" style="font-family:Microsoft YaHei;">桂林航天工业学院</a><span style="display:inline-block;text-decoration:none;height:20px;font-family:Microsoft YaHei;line-height:20px;">2017070030128</span>&nbsp;<script src="" style="font-family:Microsoft YaHei;" language="JavaScript"></script></p>
    </div></div></td>
  </tr>
</table>



<!---脚部END--->
<!--浮动-->
<div class="toolbar">
  <!-- <a href="###" class="toolbar-item toolbar-item-weixin">
   <span class="toolbar-layer"></span>
   </a>
   <a href="###" class="toolbar-item toolbar-item-feedback"></a>
   <a href="###" class="toolbar-item toolbar-item-app">
    <span class="toolbar-layer"></span>
   </a>-->
   <a href="javascript:scroll(0,0)"  class="toolbar-item toolbar-item-top"></a>
</div>
<script>
    $(window).scroll(function () {
        var st = $(document).scrollTop();

        if (st >= 155) {
            $(".navul").addClass("muenx");
        } else {
            $(".navul").removeClass("muenx");
        }
    });


</script>

<!--浮动结束-->
    </div>
    </form>
</body>
</html>
