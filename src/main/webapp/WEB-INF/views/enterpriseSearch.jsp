<%--
  Created by IntelliJ IDEA.
  User: zhangqi
  Date: 2018.12.6
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/amazeui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/wap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.css">
    <title>内容页</title>
    <style>
        .search
        {
            padding: 14px;
        }
        .search>button
        {
            position: absolute;
            top: 75px;
            right: 5%;
            z-index: 999;
            background: 0 0;
            border: none;
        }
    </style>
</head>
<body style="background:#ececec">
<div class="pet_mian" >
    <div class="pet_head">
        <header data-am-widget="header"
                class="am-header am-header-default pet_head_block">
            <div style="padding-top: 6px" class="am-header-left am-header-nav ">
                <a href="/alliance" class="iconfont pet_head_jt_ico">&#xe601;</a>
            </div>
        </header>
    </div>
    <div class="pet_content" style="background-color: #FFF">
        <div class="search">
            <label style="padding:6px 1px 5px 16px;width: 100%;border: solid 1px #ededed">
                <input style="width: 100%;height:45px;border: none"type="text" ng-keyup="enter($event)" placeholder="请输入企业名称" ng-model="keywords.text">
            </label>
            <button type="button">
                <font size="6" ><i class="fa fa-search"></i></font>
            </button>
        </div>
        <div class="pet_article_like">
            <div class="pet_content_main pet_article_like_delete">
                <div data-am-widget="list_news" class="am-list-news am-list-news-default am-no-layout">
                    <div class="am-list-news-bd">
                        <ul class="am-list">
                            <!--缩略图在标题右边-->
                            <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block" style="margin-top: 10px;border-top: 1px solid #ededed;" >
                                <div class="pet_list_one_info">
                                    <div class="pet_list_one_info_l">
                                        <div class="pet_list_one_info_ico"><span></span></div>
                                    </div>
                                    <div class="pet_list_one_info_r">
                                        <div class="pet_list_tag pet_list_tag_xxs">企业查询</div>
                                    </div>
                                </div>
                                <div  style="height: 100px;" class="am-u-sm-8 am-list-main pet_list_one_nr">
                                    <h3 style="margin-top: -40px" class="am-list-item-hd pet_list_one_bt"><a href="###" class="">中软国际</a></h3>
                                    <div class="am-list-item-text pet_list_one_text">中软国际ICT业务解决方案，以移动互联网解决为主，结合大数据和云计算技术，深入挖掘运营商内部资源的潜力，为垂直行业客户提供新型ICT服务。</div>
                                </div>
                                <div class="am-u-sm-4 am-list-thumb" style="height: 80px">
                                    <a href="###" class="">
                                        <img src="https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike220%2C5%2C5%2C220%2C73/sign=d33cb6c3deca7bcb6976cf7ddf600006/11385343fbf2b21132210a4ec38065380cd78ea7.jpg" class="pet_list_one_img" alt="">
                                    </a>
                                </div>
                            </li>
                            <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block" style="margin-top: 10px;border-top: 1px solid #ededed;" >
                                <div class="pet_list_one_info">
                                    <div class="pet_list_one_info_l">
                                        <div class="pet_list_one_info_ico"><span></span></div>
                                    </div>
                                    <div class="pet_list_one_info_r">
                                        <div class="pet_list_tag pet_list_tag_xxs">企业查询</div>
                                    </div>
                                </div>
                                <div  style="height: 100px;" class="am-u-sm-8 am-list-main pet_list_one_nr">
                                    <h3 style="margin-top: -40px" class="am-list-item-hd pet_list_one_bt"><a href="###" class="">东软集团</a></h3>
                                    <div class="am-list-item-text pet_list_one_text">东软集团是中国领先的IT解决方案与服务供应商，是上市企业，股票代码600718。公司成立于1991年，前身为东北大学下属的沈阳东大开发软件系统股份有限公司和沈阳东大阿尔派软件有限公司。目前，公司开发的各种软件已被广泛运用于工程、电力、电信、房地产、工厂设计等行业，软件的商品化率是国内最高的</div>
                                </div>
                                <div class="am-u-sm-4 am-list-thumb" style="height: 80px">
                                    <a href="###" class="">
                                        <img src="${pageContext.request.contextPath}/static/img/NeusoftLogo.png" class="pet_list_one_img" alt="">
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/amazeui.min.js"></script>
<script>
    $(function(){

        // 动态计算新闻列表文字样式
        auto_resize();
        $(window).resize(function() {
            auto_resize();
        });
        $('.am-list-thumb img').load(function(){
            auto_resize();
        });
        $('.pet_article_like li:last-child').css('border','none');
        function auto_resize(){
            $('.pet_list_one_nr').height($('.pet_list_one_img').height());
            // alert($('.pet_list_one_nr').height());
        }
        $('.pet_article_user').on('click',function(){
            if($('.pet_article_user_info_tab').hasClass('pet_article_user_info_tab_show')){
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_show').addClass('pet_article_user_info_tab_cloes');
            }else{
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_cloes').addClass('pet_article_user_info_tab_show');
            }
        });

        $('.pet_head_gd_ico').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
        });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
    });

</script>
</body>
</html>
