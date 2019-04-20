<%--
  Created by IntelliJ IDEA.
  User: zhangqi
  Date: 2018.12.6
  Time: 18:25
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
    <title>内容页</title>
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
    <div class="pet_content">
        <div class="pet_content_block">
            <article data-am-widget="paragraph" class="am-paragraph am-paragraph-default pet_content_article" data-am-paragraph="{ tableScrollable: true, pureview: true }">
                <h1 class="pet_article_title">教育部：促进产教融合、校企合作 将打政策“组合拳”？</h1>
                <div class="pet_article_user_time">发表于：2015-09-25</div>
                <p>随着中国经济调整结构、转型发展，如何深化产教融合促进教育链、人才链与产业链、创新链有机衔接成为当前的重要课题。为贯彻落实《国务院办公厅关于深化产教融合的若干意见》(国办发〔2017〕95号)等文件精神，进一步深化产教融合、产学合作，汇聚企业资源支持高校创新创业教育，促进高校人才培养与企业发展的合作共赢，营造良好的“产教融合”协同育人的创新创业环境，5月26日，由江汉大学、武汉竹叶山集团股份有限公司主办，中潮互联网教育有限公司、长江互联网教育研究院、武汉中小企业协会承办的“2018高校创新创业产教融合高峰论坛”在江汉大学学术交流中心召开，来自省内外几十余位创新创业领域的专家、学者、企业家发表了主题演讲，100多所高校的300多位代表出席了论坛。</p>
                <img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1130060740,3857959858&fm=173&app=25&f=JPEG?w=585&h=382&s=EB3432C4441215CC0ABB098003007088">
                <p>本次论坛以“深化产教融合，共促创新创业事业”为目的，围绕“创新创业教育、产教融合、产学合作，特色创业项目”等主题展开，共同探索培养创新创业人才的新路径。</p>
                <p>同时，参与论坛分享的嘉宾还有：中国高等教育创新创业学会专家委员、北京科技大学教授、博导杨武，KAB创业教育(中国)研究所副所长刘帆、中国高教创新创业学会专家委员会专家赵北平、华中师范大学创新创业教育办公室主任程凯、区块链工场创始人于小镭、科技部高新技术项目评审专家王澜、湖北省网商协会会长许强、斗鱼副总裁袁钢、深圳市高搜易信息技术有限公司CEO陈康、湖北省民办高校联盟轮值主席李友清、全国大学生创新创业实践联盟秘书长谢火木。</p>
                <p>本次论坛的举办进一步深化了产教融合、产学合作，汇聚了一批企业资源支持高校创新创业教育，极大地促进了高校人才培养与企业发展的合作共赢，为“产教融合”协同育人营造了良好的的创新创业环境。</p>
            </article>
            <ul class="like_share_block">
                <li><a class="link_share_button" href="###"><i class="iconfont share_ico_link">&#xe62f;</i>1460</a></li>
                <li><a class="link_share_button" href="###"><i class="iconfont share_ico_wx">&#xe630;</i>微信</a></li>
                <li><a class="link_share_button" href="###"><i class="iconfont share_ico_pyq">&#xe62e;</i>朋友圈</a></li>
            </ul>
        </div>
        <div class="pet_article_footer_info">Copyright(c)2015 Amaze UI All Rights Reserved</div>
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
