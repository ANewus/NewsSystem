<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ad_wenzhang.aspx.cs" Inherits="Ad_wenzhang" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> 
   
    </title>
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

    <script src="js/vue.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--顶部-->
<div id="info"></div>
<div id="top">
    <div class="top-main" style=" font-size:12px; font-family:"微软雅黑"; margin-top:10px;">
        <p class="left" >一个新闻发布网站。</p>
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
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/mainbiaoti.png" 
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
<br />
 <div class="main-wrap">
<div class="page-breadcrumb"> 当前位置：<asp:Label ID="Label4" runat="server"  v-model="lable"></asp:Label>
            </div>
<div class="page-content clearfix">
<div class="page-content-intro main-article">
  <div class="content-wrap">
      <table class="w200">
          <tr>
              <td class="style1">
                  <h1 align="center"><asp:Label ID="Label1" runat="server"></asp:Label></h1>
                  <hr />
              </td>
          </tr>
          <tr>
              <td class="style2">
                  发布时间：<asp:Label ID="Label2" runat="server"></asp:Label>
                  <hr />
              </td>
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label3" runat="server"></asp:Label>
              </td>
          </tr>
              <tr>
              <td>
           
              </td>
          </tr>
              <tr>
              <td>
                   <asp:Image 
                        ID="Image1" runat="server" Height="376px" 
    Width="696px" />
          </tr>
      </table>
  </div>
  <div class="down-url-wrap">
    <h3 class="tit">
  </div>
<div><div class="tip-bar mt20 clearfix" style="margin:10px 0px 0px;padding:0px;outline:0px;zoom:1;height:35px;line-height:35px;background-color:#dcdcdc;color:#0000ff;font-family:微软雅黑, 黑体, Arial;"><span class="tit" style="margin:0px 10px 0px 0px;padding:0px 5px;outline:0px;zoom:1;display:block;height:35px;background-color:#338FCC;color:#ffffff;float:left;">温馨提示</span>如有转载或引用以上内容,请将本文链接作出处标注。谢谢合作！</div>
</div>
	</div>
   <div class="page-content-sidebar"> 
 <div class="iqshwad-comm iqshwad-ad-r"> <table style="border-collapse:separate;font-family:'helvetica neue', 'hiragino sans gb', stheiti, Arial, 'Microsoft Yahei', 'Hiragino Sans GB', 'WenQuanYi Micro Hei', sans-serif;border:2px #FFFFFF;width:300px;height:250px;background:#FFFFFF;">
	<tbody>
		<tr>
			<td align="center" style="font-size:14px;margin:0px;padding:15px 0px;color:blue;">
				<asp:Image ID="Image3" runat="server" Height="175px" Width="291px" 
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
               </ul>
           </ul>
       </div>
       <div class="news-comm">
           <h3 class="title">
               &nbsp;</h3>
       </div>
	</div>

	</div>
    <i </li>
</div>
<!--脚部-->
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
 <a href="youdaikaifa.aspx" target="_blank">免费声明 target="_blank">免费声明</a>|
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

<script type="text/javascript">
    var vm = new Vue({
        el: "#app",
        data: {
            label: "",
        },
        methods: {
            submit: function () {
                console.log(this.message);

            }
        }
    });
</script>

<!--浮动结束-->
</div>
    </div>
    </form>
</body>
</html>
