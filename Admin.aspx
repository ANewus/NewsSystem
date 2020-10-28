<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员后台</title>
    <link href="css/style10.css" rel="stylesheet" type="text/css" />
                <script language="javascript" type="text/javascript">
                    function dyniframesize(down) {
                        var pTar = null;
                        if (document.getElementById) {
                            pTar = document.getElementById(down);
                        }
                        else {
                            eval('pTar = ' + down + ';');
                        }
                        if (pTar && !window.opera) {
                            //begin resizing iframe 
                            pTar.style.display = "block"
                            if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight) {
                                //ns6 syntax 
                                pTar.height = pTar.contentDocument.body.offsetHeight + 20;
                                pTar.width = pTar.contentDocument.body.scrollWidth + 20;
                            }
                            else if (pTar.Document && pTar.Document.body.scrollHeight) {
                                //ie5+ syntax 
                                pTar.height = pTar.Document.body.scrollHeight;
                                pTar.width = pTar.Document.body.scrollWidth;
                            }
                        }
                    } 
</script> 
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
<div id="left">
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
	<div class="left_title">
		<h2><i class="fa fa-th-large"></i>内容管理</h2>
	</div>
	<div class="left_body">
		<ul class="left_nav">
			<li><a href="Ad_wzfb.aspx" target="if1">发布文章</a></li>
			<li><a href="Ad_xgwz.aspx" target="if1">编辑文章</a></li>
			<li><a href="Ad_ggfb.aspx" target="if1">发布公告</a></li>
			<li><a href="Ad_xggg.aspx" target="if1">编辑公告</a></li>
		</ul>
	</div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
	<div class="left_title">
		<h2><i class="fa fa-cog"></i>基本管理</h2>
	</div>
	<div class="left_body">
		<ul class="left_nav">
        <li><a href="Ad_ckyhly.aspx" target="if1">查看留言</a></li>	
        <li><a href="Ad_ckyhtg.aspx" target="if1">查看投稿</a></li>	
        			<li><a href="Ad_yhgl.aspx" target="if1">管理会员</a></li>	
                    <li><a href="Ad_zhgl.aspx" target="if1">管理账户</a></li>	
			<li><a href="tuichu.aspx">安全退出</a></li>
            
		</ul>
	</div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
	<div class="left_title">
		<h2><i class="fa fa-cog"></i>系统设置</h2>
	</div>
	<div class="left_body">
		<ul class="left_nav">
			
            <li><a href="youdaikaifa.aspx" target="if1">设置网站</a></li>
            <li><a href="main.aspx" target="_blank">返回首页</a></li>
		</ul>
	</div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
<div class="left_bottom"></div>
</div>
    </form>
    <p>
           <iframe src="Adjieshao.aspx"  frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="if1" name="if1" onload="javascript:dyniframesize('ifm');" width="80%" height="900px"> 
</iframe>

    </p>
</body>
</html>
