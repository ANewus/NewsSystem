document.charset = "utf-8"
//右侧用户动态

var lljs = 7;
$(function() {
    $('.right_3_box ul li:lt(8)').hide();
    var cl = setInterval('goListdjzzw()', 4000);
})

function goListdjzzw() {
    goshowdjzz(lljs)
    if (lljs < 0)
    {
        $('.right_3_box ul li').hide();
        $('.right_3_box ul li:gt(11)').show();
        lljs = 7;
    }
    lljs--;
}

function goshowdjzz(j) {
    $('.right_3_box ul li').eq(j).slideDown(500);
    $('.right_3_box ul li:visible').last().hide();
}

//
$(document).ready(function() {
    //导航下拉列表
    $("#nav dl dd").hover(
            function() {
                $(this).addClass("hover");
            },
            function() {
                $(this).removeClass("hover");
            }

    );
    //三级页面头像详情页
    $(".sj_big ul li").hover(
            function() {
                $(this).addClass("cur");
            },
            function() {
                $(this).removeClass("cur");
            }
    );

    //我的分享 精选栏目 我的关注 换皮肤的
    $(".fx_topl .lanmu,.fx_topr .name,.fx_topr .mail,.my_box ul li,.fx_qm ul li,.mrd_pic li a").hover(
            function() {
                $(this).addClass("hover");
            },
            function() {
                $(this).removeClass("hover");
            }
    );

    //个人空间 分页
    $(".pages_list").hover(
            function() {
                $(".pages_list .more_list").addClass("hover");
            },
            function() {
                $(".pages_list .more_list").removeClass("hover");
            }
    );

});
//搜索
$(document).ready(function() {
    var $selectlist = $('.js-type-list', '.search-box'),
            $searchtype = $('.search-type span');
    $('.search-select').hover(function() {
        $selectlist.find('li').show();
        $selectlist.find('a:contains("' + $searchtype.text() + '")').parent('li').hide();
        $('.type-box', $(this)).show();
    }, function() {
        $('.type-box', $(this)).hide();
    });
    $selectlist.delegate('a', 'click',
            function() {
                if ($('input[type=text]:visible').val()) {
                    var inputVal = $('input[type=text]:visible').val();
                }
                $('.search-type span', '.search-box').text($(this).text());
                $('input.search_type', '.search-box').val($(this).data('type'));
                $('input:text', '.search-box').removeAttr('name').removeAttr('id').hide();
                $('input[data-v=' + $(this).data('id') + ']', '.search-box').attr('name', 'q').attr('id', 'search_word').show();
                $("#catid").val($(this).data('id'));
                $('.type-box', '.search-box').hide();
                $('input[type=text]:visible').val(inputVal)
            });
});



//选项卡切换
$(document).ready(function() {

    //新闻切换
    $(".main7 .title ul li a").mouseover(function() {
        $(".main7 .title ul li a").removeClass("cur");
        $(".main7_nr").css("display", "none");
        $(this).addClass("cur");
        var a = $(this).attr('id') + "a";
        $("#" + a).css("display", "block");
    });

    //二级页面_下载 右侧排行榜
    $(".ejd_phb_tit li").mouseover(function() {
        $(".ejd_phb_tit li").removeClass("cur");
        $(".ejd_phb_box").css("display", "none");
        $(this).addClass("cur");
        var b = $(this).attr('id') + "b";
        $("#" + b).css("display", "block");
    });

    //三级页面头像大小图
    $(".sj_left1_topr .p2 a").click(function() {
        $(".sj_left1_topr .p2 a").removeClass("cur");
        $(".sj_txbox").css("display", "none");
        $(this).addClass("cur");
        var c = $(this).attr('id') + "c";
        $("#" + c).css("display", "block");
    });



    //发布头像
    $("#fztx li").click(function() {
        $("#fztx li").removeClass("on");
        $(".sjtx_tags").css("display", "none");
        $(this).addClass("on");
        var t = $(this).attr('id') + "t";
        $("#" + t).css("display", "block");
    });


    //私信管理
    $(".sx_tit ul li a").click(function() {
        $(".sx_tit ul li a").removeClass("on");
        $(".manage_box_r .sx_box").css("display", "none");
        $(this).addClass("on");
        var s = $(this).attr('id') + "s";
        $("#" + s).css("display", "block");
    });
	
	//电脑装机必备
		$("#pc a").mouseover(function(){
			$("#pc a").removeClass("on");
			$(".main8_box_nr .ul_box").css("display","none");
			$(this).addClass("on");
			var z=$(this).attr('id') + "z";
			$("#" + z).css("display","block");
		
		});
		//手机装机必备
		$("#sj a").mouseover(function(){
			$("#sj a").removeClass("on");
			$(".main8_box_nr .ul_box2").css("display","none");
			$(this).addClass("on");
			var m=$(this).attr('id') + "m";
			$("#" + m).css("display","block");
		
		});
		


})

//右侧更多tags

$(function() {
    if ($('#j_app_desc').get(0)) {
        var descElem = $('#j_app_desc'),
                descHeight = descElem.height(),
                descBtn = $('#j_app_desc_btn'),
                minHeight = 180;

        if (descHeight >= minHeight) {
            descElem.css('height', minHeight + 'px');
            descBtn.attr('rel', 0).show();
        }

        else {
            $("#j_app_desc_btn").css("display", "none");
        }

        descBtn.click(function() {
            var rel = $(this).attr('rel');
            if (rel == 0) {
                descElem.css('height', 'auto');
                descBtn.html('<span class="bbj">收起</span>').attr('rel', 1);
            }
            else {
                descElem.css('height', minHeight + 'px');
                descBtn.html('<span>更多</span>').attr('rel', 0);
            }
        });
    }


});



//下载详情页更多简介

$(function() {
    if ($('#sjd_text').get(0)) {
        var descElem = $('#sjd_text'),
                descHeight = descElem.height(),
                descBtnb = $('#text_more'),
                minHeight = 180;

        if (descHeight >= minHeight) {
            descElem.css('height', minHeight + 'px');
            descBtnb.attr('rel', 0).show();
        }

        descBtnb.click(function() {
            var rel = $(this).attr('rel');
            if (rel == 0) {
                descElem.css('height', 'auto');
                descBtnb.html('<a class="sq" href="javascript:void(0);"></a>').attr('rel', 1);
            }
            else {
                descElem.css('height', minHeight + 'px');
                descBtnb.html('<a class="zk" href="javascript:void(0);"></a>').attr('rel', 0);
            }
        });
    }


});




//复制
$(document).ready(function() {
    $("#copy").click(function() {
        $(".ej_qm dl dd .info").css("display", "block");
    })

    $("#fz").click(function() {
        $(".group_text ul li .copy").css("display", "block");
    })

});




//登录弹窗
$(document).ready(function() {
    $(function() {
        $("#login,#hpf").click(function() {
            $("#fade").css({display: "block", height: $(document).height()});


            if (window.ActiveXObject)//判断浏览器是否属于IE
            {
                var browser = navigator.appName
                var b_version = navigator.appVersion
                var version = b_version.split(";");
                var trim_Version = version[1].replace(/[ ]/g, "");
                if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0")
                {
                    $("#fade").css({display: "none"});
                }
            }


            var yscroll = document.documentElement.scrollTop;
            $("#popup").css("top", "30%");
            $("#popup").css("display", "block");
            $("#l_login").css("display", "block");
            $("#l_reg").css("display", "none");
            document.documentElement.scrollTop = 0;

        });
        $("#reg,.main1_r2 .reg").click(function() {
            $("#fade").css({display: "block", height: $(document).height()});
            var yscroll = document.documentElement.scrollTop;
            $("#popup").css("top", "30%");
            $("#popup").css("display", "block");
            $("#l_login").css("display", "none");
            $("#l_reg").css("display", "block");
            document.documentElement.scrollTop = 0;

        });

        $("#reg_2,#reg_3").live("click", function() {
            $("#l_reg").css("display", "block");
            $("#l_login").css("display", "none");
        });

        $("#login2").click(function() {
            $("#l_login").css("display", "block");
            $("#l_reg").css("display", "none");
        });

        $("#close").click(function() {
            $(".mesg").html("");
            $(".mesg").hide();
            $("#email2").val("");
            $("#log_username").val("");
            $("#log_pwds").val("");
            $("#log_password").val("");
            $("#fade").css("display", "none");
            $("#popup").css("display", "none");
        });

    })


});

//个人主页修改头像
$(document).ready(function() {
    $(".fx_main1 .change_tx").css("display", "none");
    $(".fx_main1 .infor_left .pic,.fx_main1 .change_tx").mouseover(function() {
        $(".fx_main1 .change_tx").css("display", "block");
    });
    $(".fx_main1 .infor_left .pic,.fx_main1 .change_tx").mouseout(function() {
        $(".fx_main1 .change_tx").css("display", "none");
    });
});


//消息反馈
$(document).ready(function() {
    $(function() {
        $("#del").click(function() {
            $("#fade3").css({display: "block", height: $(document).height()});
            var yscroll = document.documentElement.scrollTop;
            $("#popup3").css("top", "48%");
            $("#popup3").css("display", "block");
            document.documentElement.scrollTop = 0;
            setTimeout("document.getElementById('fade3').style.display = 'none';", 2000);
            setTimeout("document.getElementById('popup3').style.display = 'none';", 2000);
        });


    })


});






//返回顶部
$.fn.extend({

    goToTop: function (b) {

        var b = $.extend({

            pageWidth: 940,

            pageWGap: 10,

            pageHGap: 30,

            startline: 20,

            duration: 200,

            showBtntime: 100

        }, b);

        var e = $(this);

        var f = $(window);

        var d = (window.opera) ? (document.compatMode == "CSS1Compat" ? $("html") : $("body")) : $("html,body");

        var c = !($.browser.msie && parseFloat($.browser.version) < 7);

        var a = false;

        e.css({

            opacity: 0,

            position: (c ? "fixed" : "absolute")

        });

        e.click(function (g) {

            d.stop().animate({

                scrollTop: 0

            }, b.duration);

            e.blur();

            g.preventDefault();

            g.stopPropagation()

        });

        f.bind("scroll resize", function (i) {

            var h;

            if (f.width() > b.pageHGap * 2 + b.pageWidth) {

                h = (f.width() - b.pageWidth) / 2 + b.pageWidth + b.pageWGap

            } else {

                h = f.width() - b.pageWGap - e.width()

            }

            var j = f.height() - e.height() - b.pageHGap;

            j = c ? j : f.scrollTop() + j;

            e.css({

                left: h + "px",

                top: j + "px"

            });

            var g = (f.scrollTop() >= b.startline) ? true : false;

            if (g && !a) {

                e.stop().animate({

                    opacity: 1

                }, b.showBtntime);

                a = true

            } else {

                if (a && !g) {

                    e.stop().animate({

                        opacity: 0

                    }, b.showBtntime);

                    a = false

                }

            }

        })

    }

});

$(function(){
//gotop
var options = {pageWidth:1000,pageWGap:1,pageHGap:30,startline:100,duration:200,showBtntime:100}
$('<a href="javascript:void(0);" class="go_top">返回顶部</a>').appendTo('body').goToTop(options);
});



//
$(document).ready(function() {
    var doc = document, inputs = doc.getElementsByTagName('input'), supportPlaceholder = 'placeholder'in doc.createElement('input'), placeholder = function(input) {
        var text = input.getAttribute('placeholder'), defaultValue = input.defaultValue;
        if (defaultValue == '') {
            input.value = text
        }
        input.onfocus = function() {
            if (input.value === text) {
                this.value = ''
            }
        };
        input.onblur = function() {
            if (input.value === '') {
                this.value = text
            }
        }
    };
    if (!supportPlaceholder) {
        for (var i = 0, len = inputs.length; i < len; i++) {
            var input = inputs[i], text = input.getAttribute('placeholder');
            if (input.type === 'text' && text) {
                placeholder(input)
            }
        }
    }
});

$(document).ready(function() {
    var doc = document, inputs = doc.getElementsByTagName('input'), supportPlaceholder = 'placeholder'in doc.createElement('input'), placeholder = function(input) {
        var password = input.getAttribute('placeholder'), defaultValue = input.defaultValue;
        if (defaultValue == '') {
            input.value = password
        }
        input.onfocus = function() {
            if (input.value === password) {
                this.value = ''
            }
        };
        input.onblur = function() {
            if (input.value === '') {
                this.value = password
            }
        }
    };
    if (!supportPlaceholder) {
        for (var i = 0, len = inputs.length; i < len; i++) {
            var input = inputs[i], password = input.getAttribute('placeholder');
            if (input.type === 'password' && password) {
                placeholder(input)
            }
        }
    }
});

function check_search() {
    var v = $("#search_word").val();
    len = strlen(v);
    if (len == 0) {
        showTips("请输入要查找的内容");
        return false;
    } else {
        return true;
    }
}

//取字符串的长度
function strlen(str) {
    return ($.browser.msie && str.indexOf('\n') != -1) ? str.replace(/\r?\n/g, '_').length : str.length;
}
//取字符串的字节
function getBytesCount2(str)
{
    if (str == null)
    {
        return 0;
    }
    else
    {
        return (str.length + str.replace(/[\u0000-\u00ff]/g, "").length);
    }
}
//通用提示框
function showTips(txt, time, status)
{
    var htmlCon = '';
    var bodywidth = '';
    var bodyheight = '';
    var lheight = '';
    var lwidth = '';
    var styles = 'position:fixed;left:48%;top:48%;';
    if (window.ActiveXObject)//判断浏览器是否属于IE
    {
        var browser = navigator.appName
        var b_version = navigator.appVersion
        var version = b_version.split(";");
        var trim_Version = version[1].replace(/[ ]/g, "");
        if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0")
        {
            bodywidth = window.top.document.documentElement.clientWidth;
            bodyheight = window.top.document.documentElement.clientHeight;
            lheight = parseInt(bodyheight * 0.48) + $(window.top.document).scrollTop();
            lwidth = parseInt(bodywidth * 0.48) + $(window.top.document).scrollLeft();
            styles = 'position:absolute;left:' + lwidth + 'px;top:' + lheight + 'px';
        }
    }

    if (txt != '') {
        if (status != 0 && status != undefined) {
            htmlCon = '<div id="fade3"></div><div id="popup3" style="' + styles + '">' + txt + '</div>';
        } else {
            htmlCon = '<div id="fade3"></div><div id="popup3" style="' + styles + '">' + txt + '</div>';
        }
        window.top.$('body').prepend(htmlCon);
        if (time == '' || time == undefined) {
            time = 1500;
        }
        setTimeout(function() {
            window.top.$('#fade3').remove();
        }, time);
        setTimeout(function() {
            window.top.$('#popup3').remove();
        }, time);
    }
}
//关注
function jgz(id, nickname) {
    $.ajax({
        type: "post",
        url: "/index.php?m=users&c=index&a=fans",
        dataType: "json",
        data: {id: id, guanzhu: 1, nickname: nickname},
        success: function(data) {
            if (data.result == "ok") {
                showTips("已加关注");
                location.reload();
            } else if (data.result == "-1") {
                //弹出登陆框
                $("#fade").css({display: "block", height: $(document).height()});
                var yscroll = document.documentElement.scrollTop;
                $("#popup").css("top", "30%");
                $("#popup").css("display", "block");
                $("#l_login").css("display", "block");
                $("#l_reg").css("display", "none");
                document.documentElement.scrollTop = 0;
            }
        }
    })
}
//积分判断等级

  function dengji(val) {
        var dj = 1;
     
        if (5 > val && val >= 0) {

            dj = 1;
        } else if (15 > val && val >= 5) {
            dj = 2;
        } else if (30 > val && val >= 15) {
            dj = 3;
        } else if (50 > val && val >= 30) {
            dj = 4;
        } else if (100 > val && val >= 50) {
            dj = 5
        } else if (250 > val && val >= 100) {
            dj = 6;
        } else if (450 > val && val >= 250) {
            dj = 7;
        } else if (700 > val && val >= 450) {
            dj = 8;
        } else if (1400 > val && val >= 700) {
            dj = 9;
        } else if (2300 > val && val >= 1400) {
            dj = 10;
        } else if (3400 > val && val >= 3400) {
            dj = 11;
        } else if (4700 > val && val >= 4700) {
            dj = 12;
        } else if (6100 > val && val >= 4700) {
            dj = 13;
        } else if (12000 > val && val >= 6100) {
            dj = 14;
        } else if (21000 > val && val >= 12000) {
            dj = 15;
        } else if (33000 > val && val >= 21000) {
            dj = 16;
        } else if (47000 > val && val >= 33000) {
            dj = 17;
        } else if (53000 > val && val >= 47000) {
            dj = 18;
        } else if (100000 > val && val >= 53000) {
            dj = 19;
        } else if (200000 > val && val >= 100000) {
            dj = 20;
        } else {
            dj = 21;
        }
        return dj;
    }
function isPlaceholder() {
    var input = document.createElement('input');
    return 'placeholder' in input;
}

if (!isPlaceholder()) {//不支持placeholder 用jquery来完成
    $(document).ready(function() {
        if (!isPlaceholder()) {
            $("input").each(
                    function() {
                        if ($(this).val() == "" && $(this).attr("placeholder") != "") {
                            $(this).val($(this).attr("placeholder"));
							$(this).addClass('input_ds');
                            $(this).focus(function() {
                                if ($(this).val() == $(this).attr("placeholder"))
                                    $(this).val("");
									$(this).removeClass('input_ds');
                            });
                            $(this).blur(function() {
                                if ($(this).val() == "")
                                    $(this).val($(this).attr("placeholder"));
									$(this).addClass('input_ds');
                            });
                        }
                    });
        }
    });

}
function SetCookie(name, value, liveTime) {
    if (liveTime == '' || liveTime == undefined) {
        liveTime = 2 * 24 * 60 * 60;
    }
    var liveTime = 24 * 60 * 60 * 1000, exp = new Date();
    exp.setTime(exp.getTime() + liveTime);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null)
        return unescape(arr[2]);
    return null;
}
function delCookie(name) {
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval = getCookie(name);
    if (cval != null)
        document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}
//下载比例
function score_down(url){
       $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
             data: "",
            contentType: "application/json",
            success: function(data) {
			$(".bg1").attr("style",data.dpre);
			$("#liken1").html(data.dpres);
			$(".bg2").attr("style",data.cpre);
			$("#liken2").html(data.cpres);
			if(data.score_down!=""){
			$("#score_down").html(data.score_down);
			$("#stars_down").attr("class","stars "+data.stars_down);
			}
			},
			error: function() {
	
			}
			});
}
 

//签名 网名 分组详情页 内容上下居中
var d=document.getElementById("sxjz");
if(d!=null){
window.onload = function(){ 
		if(document.getElementById("sxjz").offsetHeight<50){
			$(".sjqm_l1 .to_left,.sjqm_l1 .to_right").css("top","-3px");
			}
		if(document.getElementById("sxjz").offsetHeight>350){
			$(".sjqm_l1 .to_left,.sjqm_l1 .to_right").css("top","45%");
			}
    } 
}