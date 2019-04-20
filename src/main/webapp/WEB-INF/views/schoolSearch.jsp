<%--
  Created by IntelliJ IDEA.
  User: zhangqi
  Date: 2018.12.7
  Time: 1:04
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
                <input style="width: 100%;height:45px;border: none"type="text" ng-keyup="enter($event)" placeholder="请输入学校名称" ng-model="keywords.text">
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
                                        <div class="pet_list_tag pet_list_tag_xxs">学校查询</div>
                                    </div>
                                </div>
                                <div  style="height: 100px;" class="am-u-sm-8 am-list-main pet_list_one_nr">
                                    <h3 style="margin-top: -40px" class="am-list-item-hd pet_list_one_bt"><a href="###" class="">沈阳工业大学</a></h3>
                                    <div class="am-list-item-text pet_list_one_text">沈阳工业大学（Shenyang University of Technology）是一所以工为主，涵盖工、理、经、管、文、法、哲、艺术等八大学科门类的多科性研究应用型大学，入选国家“卓越工程师教育培养计划”、国家建设高水平大学公派研究生项目、首批“卓越工程师教育培养计划2.0”、“全国首批深化创新创业教育改革示范高校”、首批“新工科研究与实践项目”。</div>
                                </div>
                                <div class="am-u-sm-4 am-list-thumb" style="height: 80px">
                                    <a href="###" class="">
                                        <img src="http://www.sut.edu.cn/images/index_05.jpg" class="pet_list_one_img" alt="">
                                    </a>
                                </div>
                            </li>
                            <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block" style="margin-top: 10px;border-top: 1px solid #ededed;" >
                                <div class="pet_list_one_info">
                                    <div class="pet_list_one_info_l">
                                        <div class="pet_list_one_info_ico"><span></span></div>
                                    </div>
                                    <div class="pet_list_one_info_r">
                                        <div class="pet_list_tag pet_list_tag_xxs">学校查询</div>
                                    </div>
                                </div>
                                <div  style="height: 100px;" class="am-u-sm-8 am-list-main pet_list_one_nr">
                                    <h3 style="margin-top: -40px" class="am-list-item-hd pet_list_one_bt"><a href="###" class="">东北大学</a></h3>
                                    <div class="am-list-item-text pet_list_one_text">东北大学（Northeastern University），简称东大（NEU），中华人民共和国教育部直属的高水平研究型全国重点大学，坐落于东北中心城市沈阳，在河北省秦皇岛市设有东北大学秦皇岛分校，由教育部、辽宁省、沈阳市三方重点共建，是世界一流大学建设高校，国家首批“211工程”、“985工程”重点建设高校</div>
                                </div>
                                <div class="am-u-sm-4 am-list-thumb" style="height: 80px">
                                    <a href="###" class="">
                                        <img src="${pageContext.request.contextPath}/static/img/estlogo.png" class="pet_list_one_img" alt="">
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
