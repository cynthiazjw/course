<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
                <c:if test="${sessionScope.user.identity == 0 }">
                    <a href="courseListByPage.do?pageSize=5&pageNum=1">活动管理</a>
                </c:if>

                <c:if test="${sessionScope.user.identity == 1 }">
                    <a href="courseListByTeacher.do?pageSize=5&pageNum=1&teacherId=${sessionScope.user.id}">活动管理</a>
                </c:if>
            </li>
            <li class="active">添加活动</li>
        </ul><!-- .breadcrumb -->

        <!-- <div class="nav-search" id="nav-search">
            <form class="form-search">
                <span class="input-icon">
                    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                    <i class="icon-search nav-search-icon"></i>
                </span>
            </form>
        </div> --><!-- #nav-search -->
    </div>

    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <form class="js_form form-horizontal" role="form" action="addCourse.do">

                    <!-- 所有 -->
                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动编号
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="coursenumber" for="form-field-1"
                                   class="js_coursenumber col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>

                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动名称
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="name" for="form-field-1" class="js_coursename col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>


                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动素拓分
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="credit" for="form-field-1" class="js_credit col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>

                    <c:if test="${sessionScope.user.identity == 0 }">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">申请人
                            </label>

                            <div class="col-sm-9">
                                <select name="teacherid" class="js_select_role col-xs-10 col-sm-5" for="form-field-1">
                                    <c:forEach items="${teachers }" var="teacher">
                                        <option value="${teacher.id }">${teacher.username }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="space-4"></div>
                    </c:if>
                    <!-- 												<div class="widget-body"> -->
                    <!-- 													<div class="widget-main"> -->
                    <!-- 														<input type="text" class="input-mini" id="spinner1" /> -->
                    <!-- 														<div class="space-6"></div> -->

                    <!-- 														<input type="text" class="input-mini" id="spinner2" /> -->
                    <!-- 														<div class="space-6"></div> -->

                    <!-- 														<input type="text" class="input-mini" id="spinner3" />	 -->
                    <!-- 													</div> -->
                    <!-- 												</div> -->

                    <c:if test="${sessionScope.user.identity == 1 }">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">申请人
                            </label>

                            <div class="col-sm-9">
                                <select name="teacherid" class="js_select_role col-xs-10 col-sm-5" for="form-field-1">
                                    <c:forEach items="${teachers }" var="teacher">
                                        <c:if test="${sessionScope.user.id==teacher.id}">
                                            <option value="${teacher.id }">${teacher.username }</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="space-4"></div>
                    </c:if>

                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动开始时间
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="schooltime" for="form-field-1"
                                   class="js_schooltime col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>


                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动地址
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="address" for="form-field-1" class="js_address col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>

                    <c:if test="${sessionScope.user.identity == 0 }">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">所属组织
                            </label>

                            <div class="col-sm-9">
                                <select name="specialtyid" class="js_select_role col-xs-10 col-sm-5" id="form-field-1">
                                    <c:forEach items="${majors }" var="major">
                                        <option value="${major.id }">${major.name }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="space-4"></div>
                    </c:if>
                    <c:if test="${sessionScope.user.identity == 1 }">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">所属组织
                            </label>

                            <div class="col-sm-9">
                                <select name="specialtyid" class="js_select_role col-xs-10 col-sm-5" for="form-field-1">
                                    <c:forEach items="${majors }" var="major">
                                        <c:if test="${sessionScope.user.majorid == major.id}">
                                            <option value="${major.id }">${major.name }</option>
                                        </c:if>
                                    </c:forEach>
                                    <%--<c:forEach items="${majors }" var="major">
                                        <option value="${major.id }">${major.name }</option>
                                    </c:forEach>--%>
                                </select>
                            </div>
                        </div>
                        <div class="space-4"></div>
                    </c:if>


                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动可容纳人数
                        </label>

                        <div class="col-sm-9">
                            <input type="text" name="numberlimit" for="form-field-1"
                                   class="js_numberlimit col-xs-10 col-sm-5"/>
                        </div>
                    </div>
                    <div class="space-4"></div>


                    <div class="form-group">
                        <label class="js_labelName col-sm-3 control-label no-padding-right" for="form-field-1">活动详情:
                        </label>

                        <div class="col-sm-9">
                            <div>
                                <textarea id="form-field-11" name="detail"
                                          class="js_content col-xs-10 col-sm-5"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="space-4"></div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 添加日期 </label>

                        <div class="col-sm-9">
                            <input id="form-field-3" type="text" onclick="laydate()"
                                   class="js_createTime col-xs-10 col-sm-5"/>
                        </div>
                    </div>

                    <div class="space-4"></div>


                </form>
                <!---------------------------------提交按钮开始 ------------------------------->

                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-info" type="button" onclick="addCourse()">
                            <i class="icon-ok bigger-110"></i>
                            提交
                        </button>

                        &nbsp; &nbsp; &nbsp;
                        <button class="btn" type="reset" onclick="reset()">
                            <i class="icon-undo bigger-110"></i>
                            重置
                        </button>
                    </div>
                </div>
                <!---------------------------------提交按钮结束      ------------------------------->
                <!-- PAGE CONTENT ENDS -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->
<script type="text/javascript">
    /**
     添加活动
     */
    function addCourse() {
// 			$(".js_form").submit();

        var coursenumber = $.trim($(".js_coursenumber").val());
        if (coursenumber == "" || coursenumber == null) {
            layer.alert('请输入活动编号!', {icon: 5});
            return;
        }

        var name = $.trim($(".js_coursename").val());
        if (name == "" || name == null) {
            layer.alert('请输入活动名!', {icon: 5});
            return;
        }

        var credit = $.trim($(".js_credit").val());
         if (credit == "" || credit == null) {
         layer.alert('请输入该活动素拓分!', {icon: 5});
         return;
         }

        var schooltime = $.trim($(".js_schooltime").val());
        if (schooltime == "" || schooltime == null) {
            layer.alert('请输入该活动时间!', {icon: 5});
            return;
        }


        var address = $.trim($(".js_address").val());
        if (address == null || address == "") {
            layer.alert('请输入活动地点!', {icon: 5});
            return;
        }
        var numberLimit = $.trim($(".js_numberlimit").val());
        if (numberLimit == null || numberLimit == "") {
            layer.alert('请选择该活动最大容量人数!', {icon: 5});
            return;
        }

        var createTime = $.trim($(".js_createTime").val());
        if (createTime == null || createTime == "") {
            layer.alert('请选择日期!', {icon: 5});
            return;
        }


        var course = $(".js_form").serialize();
        $.post($(".js_form").attr("action") + "?createTime=" + $(".js_createTime").val(), course, function (data) {
            if (data == true) {
                layer.alert('添加成功!', {icon: 6, time: 2000}, function () {
                    window.location.reload();
                });
            } else {
                layer.alert('添加失败!', {icon: 5});
            }
        });
    }

    /*设置日历颜色*/
    laydate.skin('molv');
</script>
</body>
</html>