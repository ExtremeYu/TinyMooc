<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/resource/jspf/commons.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的笔记 - 萌课网</title>
<link rel="Shortcut Icon" href="<c:url value="/resource/pic/icon.ico" />" />
<link rel="stylesheet" href="<c:url value="/resource/css/bdsstyle.css"/>">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/css/img.css"/>

<script type="text/javascript">
	$(function(){
		$(".course-info.clearfix").toggle(function(){
		
				$(this).next().css("display","block");
				
			},function(){

				$(this).next().css("display","none");

			});

		$(".more-btn.or").click(function(){

			$(this).parent().next().css("display","block");
			
			});
		$(".less-btn.or").click(function(){

			$(this).parent().css("display","none");
			
			});
		});


</script>
</head>


<body class="archive category category-gnews category-3">

	<jsp:include page="/jsp/include/head2.jsp"></jsp:include>


    <div class="movedown"></div>

    <div class="wrapper">
        <div class="left">
            <header>
                <div class="movedown"></div>
                <div class="side">

                    <jsp:include page="/jsp/include/leftside.jsp"></jsp:include>

                </div>
            </header>

            <div class="garlic"></div>

        </div>

        <div class="right-container">
            <div class="right-top-banner gnews-banner-note">
                <div></div>
            </div>
            <div class="right-top"></div>
            <div class="right">


                <article class="post-1702 post type-post status-publish format-standard hentry category-gnews category-uncategorized tag-asparagus tag-delicious tag-eating-grilled tag-food tag-healthy tag-recipe tag-seasonal tag-variety tag-vegetables" id="post-1702">
                    <div class="main-head">
                        <h2>我的笔记</h2>
                    </div>

                    <div class="mod">

                        <ul class="course-notes-list" data-role="course-notes-list">
                            <c:forEach items="${notelist}" var="notelist">
                                <c:if test="${!empty notelist.notes}">
                                    <li class="">
                                        <div class="course-notes">
                                            <div class="course-info clearfix">
                                                <img src="/resource/img/icons/32/survey.png"  class="picture" />
                                                <a href="">${notelist.course.courseTitle}</a>
                                                <a href="javascript:;" class="toggle">+ 展开</a>
                                            </div>

                                            <ul class="node-rows note-list" data-role="note-list"
                                                style="display: none;">
                                                <c:forEach items="${notelist.notes}" var="notes">
                                                    <li class="node-row">
                                                        <div class="imageblock">

                                                            <div class="imageblock-content">
                                                                <div>
                                                                    <a href="" class="title">${notelist.course.courseTitle}的笔记</a>
                                                                </div>
                                                                <div class="summary">
                                                                    <div class="less">
                                                                        <a href="javascript:;" class="more-btn or" id="zhan">(展开)</a>
                                                                    </div>
                                                                    <div class="more or" style="display: none;" id="kai">
                                                                        <div class="editor-content">
                                                                            <p style="color: #000">${notes.noteContent}</p>
                                                                        </div>
                                                                        <a href="javascript:;" class="less-btn or" id="shou">(收起)</a>
                                                                        <div class="mvm clearfix">
                                                                            <a href="deleteNote.htm?noteId=${notes.noteId}" class="btn btn-small fr mhs delete-btn">删除</a>
                                                                            <a href=""class="btn btn-small fr mhs">编辑</a>
                                                                            <c:if test="${notes.public_=='是'}">
                                                                                <a href=""class="btn btn-mini active">公开笔记</a></c:if>
                                                                            <c:if test="${notes.public_=='否'}">
                                                                                <a href=""class="btn btn-mini active">私有笔记</a></c:if>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="metas">
                                                                    by <a href=""
                                                                          class="show-user-card " data-uid="1359524"
                                                                        >${user.userName}</a>
                                                                    <span class="mhs digg-rate" id="note-13164-digg-rate" style="display: none;"></span>
                                                                    <span class="mhs time">${notes.addDate}</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>

                                        </div>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>

                </article>

                <div class="movedown2"></div>

            </div> <!-- end .right -->
            <div class="right-bottom"></div>

            <div class="movedown"></div>

        </div> <!-- end .right-container -->

        <jsp:include page="/jsp/include/foot.jsp"></jsp:include>

    </div>

</body>
</html>