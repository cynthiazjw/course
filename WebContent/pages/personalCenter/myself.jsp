<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <c:set var="ctx" value="${pageContext.request.contextPath}"/> --%>
<!DOCTYPE html>
<html lang="ch">
<%@ include file="../common.jsp" %>

<div class="main-content">
    <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try {
                ace.settings.check('breadcrumbs', 'fixed')
            } catch (e) {
            }
        </script>

        <ul class="breadcrumb">
            <li>
                <i class="icon-home home-icon"></i>
                <a href="pages/personalCenter/myself.jsp">首页</a>
            </li>

            <li>
                <a href="pages/personalCenter/myself.jsp">个人中心</a>
            </li>
            <li class="active">个人信息</li>
        </ul><!-- .breadcrumb -->
    </div>

    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <form class="form-horizontal" role="form">
                    <div class="form-group">

                        <label class="col-sm-3 control-label no-padding-right" id="form-field-1">我的头像:</label>

                        <div class="col-sm-9">
                            <label class="col-sm-5 col-xs-10" for="form-field-1">
                                <img src="${ctx }/${sessionScope.user.imageUrl}" class="js_imgUrl img-circle"
                                     width="140" height="140">
                            </label>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"><c:if
                                test="${sessionScope.user.identity  ==2}">学</c:if>
                            <c:if test="${sessionScope.user.identity  != 2}">工</c:if>
                            号:</label>
                        <div class="col-sm-9">
                            <label class="col-sm-5 col-xs-10" for="form-field-1">
                                ${sessionScope.user.userNumber}</label>
                        </div>
                    </div>

                    <div class="space-4"></div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">姓名:</label>

                        <div class="col-sm-9">
                            <label class="col-sm-5 col-xs-10" for="form-field-1">
                                ${sessionScope.user.username}</label>
                        </div>
                    </div>

                    <div class="space-4"></div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 性别:</label>
                        <div class="col-sm-9">
                            <label>
                                <c:if test="${sessionScope.user.sex == 1}"> <input type="radio" checked value="1"
                                                                                   class="ace js_radio"/>
                                    <span class="lbl">男</span></c:if>
                            </label>
                            <label>
                                <c:if test="${sessionScope.user.sex == 2}"><input type="radio" checked value="2"
                                                                                  class="ace js_radio"/>
                                    <span class="lbl">女</span></c:if>
                            </label>
                            <label>
                                <c:if test="${sessionScope.user.sex == 0}"> <input type="radio" checked value="0"
                                                                                   class="ace js_radio"/>
                                    <span class="lbl">未知</span></c:if>
                            </label>
                        </div>
                    </div>


                    <c:if test="${sessionScope.user.identity!=2}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 新建日期 :</label>

                            <div class="col-sm-9">
                                <label class="col-sm-5 col-xs-10" for="form-field-1">
                                    <fmt:formatDate value='${sessionScope.user.createTime}' type="date"
                                                    pattern='yyyy-MM-dd'/></label>
                            </div>
                        </div>
                    </c:if>

                    <div class="space-4"></div>
                </form>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->
<script type="text/javascript">

    if ("${message}") {
        layer.msg('${message}', {
            offset: 0,
        });
    }
    if ("${error}") {
        layer.msg('${error}', {
            offset: 0,
            shift: 6
        });
    }

    /*设置日历颜色*/
    laydate.skin('molv');
</script>
</body>
</html>