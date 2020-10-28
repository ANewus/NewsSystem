<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main2.aspx.cs" Inherits="main2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>一个新闻发布网站</title>
    <link rel="stylesheet" href="css/mainstyle.css">
        <link rel="stylesheet" href="css/StyleSheet5.css">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet3.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet4.css" />
    <style type="text/css">
            *{margin:0;padding:0;}
            ul,li{list-style:none;display:block;}
            #scrollBox{background: #FFF;margin:40px auto;overflow:hidden;border: 1px dashed #CCC;width: 1138px;
            height: 129px;
        }
            #scrollBox #con1,#scrollBox #con2{float:left;margin-left:10px;}        
            #innerdiv {float: left;width: 800%;}    

        
        #I1
        {
            height: 86px;
            width: 270px;
        }
    
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
 <!--顶部-->
<div id="info"></div>
<div id="top">
    <div class="top-main" style=" font-size:12px; font-family:"微软雅黑"; margin-top:10px;">
        <p class="left" >一个新闻发布网站</p>
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
    </div>
</div>

            <hr>
<!--顶部结束-->
        <div align="center">
            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/mainbiaoti.png" 
                Height="182px" Width="1197px" />
            <br />
        </div>
        <!--导航-->
        <div id="head">
<div class="menu">
		<ul class="navul">
			<li><a href="main2.aspx">首页</a></li>
 
			<li><a href="dhbf.html" target="_blank">动画播放</a>
				
			</li>
 
 
			<li><a href="liaotianshi.aspx" target="_blank">站内聊天室</a>
				
			</li>
 
			<li><a href="dy_mian.aspx" target="_blank">在线电影</a>
				
			</li>
 
			<li><a href="yhfk.aspx" target="_blank">用户反馈</a>
			</li>
            <li><a href="liuyan.aspx" target="_blank">留言板</a>
			</li>
 <li><a href="https://jq.qq.com/?_wv=1027&k=5u6mZda" 
                target="_blank">交流QQ群</a></li>
                <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=770041996&amp;site=qq&amp;menu=yes" target=_blank>联系作者</a>
				
			</li>
            			<li><a href="zanzhuzuozhe.aspx" target="_blank">赞助作者</a>
				
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
        <table class="w500">
            <tr>
                <td style="width: 364px; height: 227px">
                    <div class="cat-sidebar">
                   <div class="title">
				<h2>网站介绍</h2>
                </div>
                </div>
                    <asp:Panel ID="Panel1" runat="server" Height="160px" Width="355px">
                        &nbsp;&nbsp;
                        <span style="color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        该网站为钱喜勇、黄代帆、李夫镛、周文强的软件工程课设作业。</span></asp:Panel>
                <hr />
                </td>
                <td style="width: 338px; height: 227px">
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/img/guat.png" Height="207px" 
                        Width="333px" />
                </td>
                <td style="width: 500px; " align="center">
                     <div class="cat-sidebar">
                   <div class="title">
				<h2>网站公告</h2>
                </div>
                </div>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="ggnrLabel" runat="server" Text='<%# Eval("ggnr") %>' />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            ----<asp:Label ID="ggsjLabel" runat="server" Text='<%# Eval("ggsj") %>' />
                        </ItemTemplate>
                    </asp:DataList>
                <hr />
                  
                </td>
                <td style="width: 500px; " align="center">
                     <iframe id="I1" border="0" frameborder="no" marginheight="0" marginwidth="0" 
                         name="I1" 
                         src="http://music.163.com/outchain/player?type=2&amp;id=420401441&amp;auto=1&amp;height=66">
                     </iframe>
                  
                </td>
            </tr>
            <tr>
                <td style="width: 695px; height: 400px" colspan="2">
                <div class="cat-sidebar">
                   <div class="title">
				<h2>网站资讯</h2>
                </div></div>

                                                        <asp:DataList ID="DataList1" runat="server" 
                                                            Height="285px" Width="676px" 
                        Font-Bold="False" Font-Italic="False" 
                                                            Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="False" >
                                                            <ItemTemplate>
                                                                <table class="style1">
                                                                    <tr>
                                                                        <td align="left" class="style2" style="width: 350px">
                                                                            <asp:HyperLink ID="HyperLink2" runat="server" 
                                                                                NavigateUrl='<%# Eval("id", "Ad_wenzhang.aspx?a={0}") %>' 
                                                                                Text='<%# CutStr(Eval("biaoti").ToString()) %>'></asp:HyperLink>
                                                                        </td>
                                                                        <td Height="28px" style="width: 100px" Width="30px">
                                                                        </td>
                                                                        <td align="right" style="width: 200px">
                                                                            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:DataList>

                    <br />
                    <div align="center">
                        当前页：<asp:Label ID="lblCurrent" runat="server" Text="1"></asp:Label>
                        &nbsp; 总页数：<asp:Label ID="lblTotal" runat="server"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">第一页</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="lbntUp" runat="server" OnClick="lbntUp_Click">上一页</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click">下一页</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">最后一页</asp:LinkButton>
                    </div>
                    <hr />
                </td>
                 <td colspan="2">
                   <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="500" height="380"><param name="allowScriptAccess" value="sameDomain"><param name="movie" value="img/快刀水果忍者.swf"><param name="quality" value="high"><param name="bgcolor" value="#ffffff"><embed src="img/快刀水果忍者.swf" quality="high" bgcolor="#ffffff" width="500" height="380" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>
                   </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            </table>
            <div class="index-screen-hd clearfix">
		<div class="screen-left promo-wrap">
<div class="cat-sidebar">
			<div class="title">
				<h2>广告位招租：</h2>
                </div>
    <div id="scrollBox">
        <div id="innerdiv">
            <div id="con1">
                <asp:Image ID="Image1" runat="server" height="120" width="192" 
                    ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image2" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image3" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image4" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image5" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image6" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
               <asp:Image ID="Image7" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
                <asp:Image ID="Image8" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
               <asp:Image ID="Image9" runat="server" height="120" width="192" ImageUrl="~/img/zhaozu.png"/>
            </div>
            <div id="con2"></div>
        </div>
  </div>
  </div>
		</div>
	</div>
    <script type="text/javascript">
        var area = document.getElementById('scrollBox');
        var con1 = document.getElementById('con1');
        var con2 = document.getElementById('con2');
        con2.innerHTML = con1.innerHTML;
        area.scrollLeft = 0;
        function scrollUp() {
            if (area.scrollLeft >= con2.offsetWidth) {
                area.scrollLeft = 0;
            } else {
                area.scrollLeft += 5;
            }
        }
        var time = 50;
        var mytimer = setInterval(scrollUp, time);
        area.onmouseover = function () {
            clearInterval(mytimer);
        }
        area.onmouseout = function () {
            mytimer = setInterval(scrollUp, time);
        }
        /*
        var speed=10; //数字越大速度越慢
        var tab=document.getElementById('scrollBox');
        var tab1=document.getElementById('con1');
        var tab2=document.getElementById('con2');
        tab2.innerHTML=tab1.innerHTML;
        function Marquee(){
        if(tab2.offsetWidth-tab.scrollLeft<=0)
        tab.scrollLeft-=tab1.offsetWidth
        else{
        tab.scrollLeft++;
        }
        }
        var MyMar=setInterval(Marquee,speed);
        tab.onmouseover=function() {clearInterval(MyMar)};
        tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
        */
        </script>
<!--脚部-->
 <div class="links main1200 dis-top">
 <hr />
    <div class="fr">
         <a href="https://www.iqshw.com/" target="_blank"><img src="img/iq.png"
                        border="0" /></a>
<a href="https://www.xd0.com/" target="_blank"><img src="img/xiaodao.png"
                        border="0" /></a>
                        <a href="https://www.52pojie.cn/" target="_blank"><img src="img/wuai.png"
                        border="0" /></a>
                         <a href="http://www.zuanke8.com/" target="_blank"><img src="img/zkb.png"
                        border="0" /></a>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:hulu %>" 
                        SelectCommand="SELECT * FROM [gonggao]"></asp:SqlDataSource>
    </form>
</body>
</html>
