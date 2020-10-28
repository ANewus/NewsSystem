<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>桂航新闻平台</title>
    <link rel="stylesheet" href="css/mainstyle.css">
        <link rel="stylesheet" href="css/StyleSheet5.css">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet3.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet4.css" />
      <link rel="stylesheet" href="css/swiper.min.css">

  <link rel="stylesheet" href="css/font.css">
  <link rel="stylesheet" href="css/ups.css">



        <style type="text/css">
.d11{width:500px;height:auto;overflow:hidden;border:#666666 2px solid;background-color:#000000;position:relative;}
.loading{width:500px;border:#666666 2px solid;background-color:#000000;color:#FFCC00;font-size:12px;height:370px;text-align:center;padding-top:30px;font-family:Verdana, Arial, Helvetica, sans-serif;font-weight:bold;}
.d22{width:100%;height:370px;overflow:hidden;}
.num_list1{position:absolute;width:100%;left:0px;bottom:-1px;background-color:#000000;color:#FFFFFF;font-size:12px;padding:4px 0px;height:20px;overflow:hidden;}
.num_list span{display:inline-block;height:16px;padding-left:6px;}
img1{border:0px;}

.button1{position:absolute; z-index:1000; right:0px; bottom:2px; font-size:13px; font-weight:bold; font-family:Arial, Helvetica, sans-serif;}
.b11,.b22{background-color:#666666;display:block;float:left;padding:2px 6px;margin-right:3px;color:#FFFFFF;text-decoration:none;cursor:pointer;}
.b22{color:#FFCC33;background-color:#FF6633;}
</style>

<script language="javascript" type="text/javascript">

    //主函数
    var s = function () {
        var interv = 2000; //切换间隔时间
        var interv2 = 10; //切换速速
        var opac1 = 80; //文字背景的透明度
        var source = "fade_focus" //焦点轮换图片容器的id名称
        //获取对象
        function getTag(tag, obj) { if (obj == null) { return document.getElementsByTagName(tag) } else { return obj.getElementsByTagName(tag) } }
        function getid(id) { return document.getElementById(id) };
        var opac = 0, j = 0, t = 63, num, scton = 0, timer, timer2, timer3; var id = getid(source);
        id.removeChild(getTag("div", id)[0]); var li = getTag("li", id); var div = document.createElement("div"); var title = document.createElement("div");
        var span = document.createElement("span"); var button = document.createElement("div"); button.className = "button1";
        for (var i = 0; i < li.length; i++) {
            var a = document.createElement("a"); a.innerHTML = i + 1; a.onclick = function () {
                clearTimeout(timer); clearTimeout(timer2); clearTimeout(timer3);
                j = parseInt(this.innerHTML) - 1; scton = 0; t = 63; opac = 0; fadeon();
            }; a.className = "b11";
           a.onmouseover = function () { this.className = "b22" }; a.onmouseout = function () { this.className = "b11"; sc(j) }; button.appendChild(a); }
        //控制图层透明度
        function alpha(obj, n) { if (document.all) { obj.style.filter = "alpha(opacity=" + n + ")"; } else { obj.style.opacity = (n / 100); } }
        //控制焦点按钮
        function sc(n) { for (var i = 0; i < li.length; i++) { button.childNodes[i].className = "b11" }; button.childNodes[n].className = "b22"; }
        title.className = "num_list1"; title.appendChild(span); alpha(title, opac1); id.className = "d11"; div.className = "d22"; id.appendChild(div); id.appendChild(title); id.appendChild(button);
        //渐显
        var fadeon = function () {
            opac += 5; div.innerHTML = li[j].innerHTML; span.innerHTML = getTag("img", li[j])[0].alt; alpha(div, opac); 
        if (scton == 0) { sc(j); num = -2; scrolltxt(); scton = 1 }; if (opac < 100) { timer = setTimeout(fadeon, interv2) } else { timer2 = setTimeout(fadeout, interv); }; }
        //渐隐
        var fadeout = function () {
            opac -= 5; div.innerHTML = li[j].innerHTML; alpha(div, opac); if (scton == 0) { num = 2; scrolltxt(); scton = 1 };
         if (opac > 0) { timer = setTimeout(fadeout, interv2) } else { if (j < li.length - 1) { j++ } else { j = 0 }; fadeon() }; }
        //滚动文字
     var scrolltxt = function () {
         t += num; span.style.marginTop = t + "px"; 
        if (num < 0 && t > 3) { timer3 = setTimeout(scrolltxt, interv2) } else if (num > 0 && t < 62) { timer3 = setTimeout(scrolltxt, interv2) } else { scton = 0 } };
        fadeon();
    }
    //初始化
    window.onload = s;
</script>
</head>
<body>
    <form id="form1" runat="server">
 <!--顶部-->
<div id="info"></div>
<div id="top">
    <div class="top-main" style=" font-size:12px; font-family:"微软雅黑"; margin-top:10px;">
    <table>
    <td style="width:280px;">
        <p class="left" >桂航新闻平台</p>
        </td>
        <td style="width:340px;" align="left">
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="搜一下他不香吗？"></asp:TextBox>
            <asp:Button ID="Button1"
                runat="server" Text="搜索" Height="27px" 
                                    Width="40px" onclick="Button1_Click" />
        

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
                <a href="yh_main.html" target="_blank" style="font-size:16px;color:#090; font-weight:700;font-family:"微软雅黑";">用户中心</a>
        </li>
                <li>
        <a href="tuichu.aspx" target="_blank" style="font-size:16px;color:#F00; font-weight:700;font-family:"微软雅黑";">退出</a>
        </li> 
        <li>,&nbsp;</li>
                <li>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/yh_main.html" 
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
            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/mainbiaoti.png" 
                Height="66px" Width="1197px" />
        </div>
        <!--导航-->
        <div id="head">
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
<div id="ups-banner">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <div class="content"><div class="txt"><h3>毕业季</h3><p>以梦为航 未来可期  </p><p>                         （点击观看自制MV） </p></div><a href="https://mp.weixin.qq.com/s/oL_FoE1CALW3dXwWkmXAzw" class="link">前往</a></div>
          <div class="img-fix"><div class="img-inner"><img src="img/hengfu1.jpg"  class="img"></div></div>
        </div>
        <div class="swiper-slide">
          <div class="content"><div class="txt"><h3>航天精神</h3><p> 弘扬航天精神 拥抱星辰大海</p><p>制图/大学生传媒中心 罗子强</p></div><a href="https://www.guat.edu.cn/info/1007/14431.htm" class="link">前往</a></div>
          <div class="img-fix"><div class="img-inner"><img src="img/hengfu2.jpg" class="img"></div></div>
        </div>
        <div class="swiper-slide">
          <div class="content"><div class="txt"><h3>热爱党</h3><p>不忘初心 牢记使命  </p><p>制/刘梓汐 </p></div><a href="http://bwcx.guat.edu.cn/" class="link">前往</a></div>
          <div class="img-fix"><div class="img-inner"><img src="img/hengfu3.jpg" class="img"></div></div>
        </div>
      </div>
      <div class="bottom-nav"><div class="ups-icon-videoplay"></div><div class="swiper-pagination"></div></div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>


  <script src="js/swiper.min.js"></script>
  <script src="js/ups.js"></script>
<br />
        <table class="w500">
            <tr>
    
                <td style="width: 695px; height: 400px" colspan="2">
                <div class="cat-sidebar">
                   <div class="title">
				<h2>桂航体育要闻</h2>
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

                             <td style="width: 10px;height:300px" align="center">
                </td>

                 <td colspan="2">

                  <div id="fade_focus">
    <div class="loading">Loading...<br /></div>

    <ul style="display:none;">
      <li><a href="https://www.guat.edu.cn/info/1004/14784.htm" target="_blank"><img src="img/lb1.jpg" width="500" height="370" alt="【毕业季】我校隆重举行2020年毕业典礼暨学位授予仪式" /></a></li>
      <li><a href="https://www.guat.edu.cn/info/1004/14709.htm" target="_blank"><img src="img/lb2.jpg" width="500" height="370"  alt="【毕业季】各界主流媒体报道转载我校原创毕业季视频" /></a></li>
      <li><a href="https://www.guat.edu.cn/info/1004/14773.htm" target="_blank"><img src="img/lb3.jpg" width="500" height="370" alt="学校召开增设本科专业评议论证会" /></a></li>
      <li><a href="https://www.guat.edu.cn/info/1004/14750.htm" target="_blank"><img src="img/lb4.jpg" width="500" height="370" alt="我校成功组织召开桂林市退役军人培训服务交流会" /></a></li>
    </ul>
</div>
                   </td>

            </tr>

            </table>
            <br />
            <table width="100%" border="0" cellspacing="0" cellpadding="0">

    <tr>
                <td style="width: 155px; height: 227px">
                    <div class="cat-sidebar">
                   <div class="title"style="width: 155px;">
				<h2>信息平台</h2>
                </div>
                </div>
                    <asp:Panel ID="Panel1" runat="server" Height="200px" Width="155px">
                    <table align="left" width="150" height="227" cellspacing="0">
            <tr>
                <td align="left" valign="center">
<img src="img/liaotian.png" border="0" width="35" 
                            height="35">
                          <span style="font-size:16px;"><a href="liaotianshi.aspx" target="_blank" 
                        style="font-size: x-large">我要聊天</a></span>
                        
                        </a>  
                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
<tr>
                <td align="left" valign="center">
<img src="img/liuyan.png" border="0" width="35" 
                            height="35">
                          <span style="font-size:16px;"><a href="yhfk.aspx" target="_blank" style="font-size: x-large">我要留言</a></span>
                        
                        </a>  
                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr><tr>
                <td align="left" valign="center">
<img src="img/tougao.png" border="0" width="35" 
                            height="35">
                          <span style="font-size:16px;"><a href="yhtg.aspx" target="_blank" style="font-size: x-large">我要投稿</a></span>
                        
                        </a>  
                        &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>

</table>
 <hr />
                        </asp:Panel>
          
                </td>
                <td style="width: 300px;height:300px" align="left">
                    <div class="cat-sidebar">
                   <div class="title">
				<h2>通知公告</h2>
                </div>
                    <asp:Panel ID="Panel2" runat="server" Height="300px" Width="300px" >
          
                     <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1" 
                            Height="186px" Width="426px">
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td align="left" class="style2" style="width: 350px">
                                        <asp:HyperLink ID="HyperLink2" runat="server" 
                                            NavigateUrl='<%# Eval("id", "Ad_gonggao.aspx?a={0}") %>' 
                                            Text='<%# CutStr(Eval("ggbt").ToString()) %>'></asp:HyperLink>
                                    </td>
                    <td><asp:Label ID="ggsjLabel" runat="server" Text='<%# CutStr2(Eval("ggsj").ToString()) %>' />
                                </td>
                                </tr>
                          
                               
                               
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                        </asp:Panel>
                        <hr />
          
                </td>

                     <td style="width: 20px;height:300px" align="center">
                </td>

                <td style="width: 300px;height:300px" align="left">
                    <div class="cat-sidebar">
                   <div class="title">
				<h2>用户留言  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  href="liuyan.aspx" target="_blank" >更多留言>></a></h2>
                </div>
                    <asp:Panel ID="Panel3" runat="server" Height="300px" Width="300px">
                     <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
                            Width="432px">
                        <ItemTemplate>
                            用户: <asp:Label ID="yh_idLabel" runat="server" Text='<%# Eval("yh_id") %>' />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 留言: <asp:Label ID="lynrLabel" runat="server" Text='<%# CutStr(Eval("lynr").ToString()) %>' />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ----
                            <asp:Label ID="lytimeLabel" runat="server" Text='<%# Eval("lytime") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:hulu %>" 
                            
                            
                            SelectCommand="SELECT [yh_id], [lytime], [lynr] FROM [liuyan] ORDER BY [lytime] DESC">
                        </asp:SqlDataSource>
                        </asp:Panel>
           <hr />
                </td>
        
               
            </tr></td>
  </tr>
</table>

 <div class="links main1200 dis-top">
 <hr />
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
<hr />
<br /></div>


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
                        
        SelectCommand="SELECT [ggbt], [ggsj] FROM [gonggao] ORDER BY [ggsj] DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
