﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="liuyan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
body {font-family:microsoft yahei,Arial, Helvetica, sans-serif;font-size:12px;background:#FFFFFF  repeat 0 0;}
a {text-decoration:none;}
a img {border:0;}
a:hover {text-decoration:underline;}
.user-name { font-size:14px; font-weight:bold;color:#DE4C1C }
.wrapper {width:600px;margin:0 auto;}
h1 {font-size:18px;line-height:30px;text-align:center;margin:100px 0;}
h1 span {font-size:12px;color:#696A52;}


/* comment style */
.ds-post-main {position:relative;margin-bottom:30px;}
.ds-avatar {z-index:2;position:absolute;top:48px;left:-20px;padding:5px;width:36px;height:36px; border-radius:50%; box-shadow:-1px 0 1px rgba(0,0,0,.15) inset; background:#E5E6D0 url(http://www.shejidaren.com/wp-content/themes/Daren/images/bg.jpg) repeat 0 0;}
.ds-avatar a {display:block; padding:1px; width:32px; height:32px; border:1px solid #B9BAA6; border-radius:50%; background-color:#fff; -moz-transition:color 0.15s linear; -webkit-transition:color 0.15s linear;transition:color 0.15s linear;}
.ds-avatar img {display:block;width:32px; height:32px;border-radius:50%;box-shadow:0 1px 5px rgba(0, 0, 0, 0.22)}
.ds-comment-body, .ds-avatar, .ds-avatar a,
.ds-avatar img {-webkit-transition:.4s all ease-in-out;-moz-transition:.4s all ease-in-out;-o-transition:.4s all ease-in-out;-ms-transition:.4s all ease-in-out;transition:.4s all ease-in-out}
.ds-post-main:hover .ds-avatar img {-webkit-transform:rotate(360deg);-moz-transform:rotate(360deg);-o-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg);}
.ds-comment-body {z-index:1;position:relative;left:0;background: #F0F0E3;padding:15px 15px 15px 47px;color:#696A52; border-radius:5px; box-shadow:0 1px 2px rgba(0,0,0,.15), 0 1px 0 rgba(255,255,255,.75) inset;}


/* layout */
.ds-post-main:hover .ds-comment-body {left:40px;}
.ds-post-main:hover .ds-avatar:after,.ds-post-main:hover .ds-avatar a:after,.ds-post-main:hover .ds-avatar a:before { position:absolute; content:'+'; font-size:18px;font-weight:bold; font-family:Arial, Helvetica, sans-serif;color:#696A52}
.ds-post-main:hover .ds-avatar:after {top:14px;left:56px}
.ds-post-main:hover .ds-avatar a:after {top:9px;left:48px;}
.ds-post-main:hover .ds-avatar a:before {top:9px;left:-29px;}
.ds-post-main:hover .ds-avatar {left:-40px;}
.ds-post-main:hover .ds-avatar a {position:relative;left:-80px;}
.ds-post-main:hover .ds-avatar a img{position:relative;left:-80px;}



</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="wrapper">
<img src="img/liuyan.png" border="0" width="20" 
                            height="20"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/yhfk.aspx">我也要留言(用户)</asp:HyperLink>
           <asp:DataList ID="DataList1" runat="server"  
                Height="568px" Width="597px">
                 <ItemTemplate>
	
	<div class="ds-post-main">
    
	<div class="ds-avatar">
			<img alt="留言" src="img/liuyan2.png"></a>
		</div>
 
		<div class="ds-comment-body">
			
			<p> 留言用户id:<asp:Label ID="yh_idLabel" runat="server" Text='<%# Eval("yh_id") %>' /></p>
			<p> 发表于：<asp:Label ID="lytimeLabel" runat="server" Text='<%# Eval("lytime") %>' /></p>
			<p>留言内容：<asp:Label ID="lynrLabel" runat="server" Text='<%# Eval("lynr") %>' /></p>
             <p><asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red" 
                                    NavigateUrl="~/Ad_ckyhly.aspx" Target="_blank">点击跳转回复页面(管理员)</asp:HyperLink></p>
<p>管理员回复：<asp:Label ID="Ad_hfLabel" runat="server" Text='<%# Eval("Ad_hf") %>' /></p>
<p>回复于：<asp:Label ID="hftimeLabel" runat="server" Text='<%# Eval("hftime") %>' /></p>

		</div>
      
	</div>
            </ItemTemplate>
            </asp:DataList>
</div>

<div style="padding-top:30px;text-align:center;">
<script type="text/javascript">
    alimama_pid = "mm_13762235_3464323_11278806";
    alimama_width = 250;
    alimama_height = 250;
</script>
<script src="js/liuyan.js" type="text/javascript"></script>
</div>



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
          


</asp:Content>

