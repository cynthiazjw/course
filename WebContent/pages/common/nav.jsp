<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.user.identity ==0 }">
    <body>
</c:if>
<c:if test="${sessionScope.user.identity ==1 }">
    <body class="skin-2">
</c:if>
<c:if test="${sessionScope.user.identity ==2 }">
    <body class="skin-3">
</c:if>


<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }

            </script>


            <!--                             判断用户的角色，进入不同的页面                                                                             -->
            <c:if test="${sessionScope.user.identity  ==  0}">
            <ul class="nav nav-list" id="navs">

                <li id="nav-1">
                    <a href="teacherCourseListByPage.do?pageNum=1&pageSize=10">
                        <i class="icon-text-width"></i>
                        <span class="menu-text">申请管理</span>
                    </a>
                </li>


                <li id="nav-2">
                    <a class="dropdown-toggle" href="javascript:void(0);" onclick="collegeListByPage()">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text">学院管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <!-- 二级菜单开始 -->
                    <ul class="submenu">
                        <li>
                            <a href="collegeListByPage.do?pageNum=1&pageSize=10">
                                <i class="icon-double-angle-right"></i>
                                学院列表
                            </a>
                        </li>

                        <li>
                            <a href="addCollegePage.do">
                                <i class="icon-double-angle-right"></i>
                                添加学院
                            </a>
                        </li>
                    </ul>
                    <!-- 二级菜单结束 -->


                </li>

                <li id="nav-3">
                    <a href="javascript:void(0);" class="dropdown-toggle" onclick="majorListByPage()">
                        <i class="icon-text-width"></i>
                        <span class="menu-text">组织管理</span>
                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <!-- 二级菜单开始 -->
                    <ul class="submenu">
                        <li>
                            <a href="majorListByPage.do?pageNum=1&pageSize=10">
                                <i class="icon-double-angle-right"></i>
                                组织列表
                            </a>
                        </li>

                        <li>
                            <a href="addMajorPage.do">
                                <i class="icon-double-angle-right"></i>
                                添加组织
                            </a>
                        </li>
                    </ul>
                    <!-- 二级菜单结束 -->
                </li>


                <li id="nav-4">
                    <a href="javascript:void(0);" class="dropdown-toggle" onclick="classListByPage()">

                        <i class="icon-text-width"></i>
                        <span class="menu-text">社团管理</span>
                        <b class="arrow icon-angle-down"></b>

                    </a>

                    <!-- 二级菜单开始 -->
                    <ul class="submenu">
                        <li>
                            <a href="classListByPage.do?pageNum=1&pageSize=10">
                                <i class="icon-double-angle-right"></i>
                                社团列表
                            </a>
                        </li>

                        <li>
                            <a href="addClassPage.do">
                                <i class="icon-double-angle-right"></i>
                                添加社团
                            </a>
                        </li>
                    </ul>
                    <!-- 二级菜单结束 -->

                </li>


                <li id="nav-5">
                    <a href="javascript:void(0);" class="dropdown-toggle" onclick="userListByPage()">

                        <i class="icon-text-width"></i>
                        <span class="menu-text">用户管理</span>
                        <b class="arrow icon-angle-down"></b>

                    </a>


                    <!-- 二级菜单开始 -->
                    <ul class="submenu">
                        <li>
                            <a href="userListByPage.do?pageNum=1&pageSize=10&identity=2">
                                <i class="icon-double-angle-right"></i>
                                用户列表
                            </a>
                        </li>

                        <li>
                            <a href="addUserPage.do">
                                <i class="icon-double-angle-right"></i>
                                添加用户
                            </a>
                        </li>
                    </ul>
                    <!-- 二级菜单结束 -->
                </li>


                <li id="nav-6">
                    <a href="javascript:void(0);" class="dropdown-toggle" onclick="courseListByPage()">

                        <i class="icon-text-width"></i>
                        <span class="menu-text">活动管理</span>
                        <b class="arrow icon-angle-down"></b>

                    </a>


                    <!-- 二级菜单开始 -->
                    <ul class="submenu">
                        <li>
                            <a href="courseListByPage.do?pageNum=1&pageSize=5">
                                <i class="icon-double-angle-right"></i>
                                活动列表
                            </a>
                        </li>

                        <li>
                            <a href="addCoursePage.do">
                                <i class="icon-double-angle-right"></i>
                                添加活动
                            </a>
                        </li>
                    </ul>
                    <!-- 二级菜单结束 -->
                </li>

                </c:if>

                <c:if test="${sessionScope.user.identity  == 1}">
                <ul class="nav nav-list">
                    <li>
                        <%--<a href="courseListByTeacher.do?pageNum=1&pageSize=5&teacherId=${sessionScope.user.id}">
                            <i class="icon-text-width"></i>
                            <span class="menu-text">活动管理</span>

                            <b class="arrow icon-angle-down"></b>
                        </a>--%>

                            <a href="javascript:void(0);" class="dropdown-toggle" onclick="courseListByTeacher()">

                                <i class="icon-text-width"></i>
                                <span class="menu-text">活动管理</span>
                                <b class="arrow icon-angle-down"></b>

                            </a>


                            <!-- 二级菜单开始 -->
                            <ul class="submenu">
                                <li>
                                    <a href="courseListByTeacher.do?pageNum=1&pageSize=5&teacherId=${sessionScope.user.id}">
                                    <%--<a href="courseListByPage.do?pageNum=1&pageSize=5">--%>
                                        <i class="icon-double-angle-right"></i>
                                        活动列表
                                    </a>
                                </li>

                                <li>
                                    <a href="addCoursePage.do">
                                        <i class="icon-double-angle-right"></i>
                                        添加活动
                                    </a>
                                </li>
                            </ul>
                            <!-- 二级菜单结束 -->
                    </li>

                    <li>
                        <a href="teacher/student.do" class="dropdown-toggle">
                            <i class="icon-list"></i>
                            <span class="menu-text">学生管理 </span>

                            <b class="arrow icon-angle-down"></b>
                        </a>

                        <!-- 二级菜单开始 -->
                        <ul class="submenu">
                            <li>
                                <a href="studentListByPage.do?pageNum=1&pageSize=10&teacherId=${sessionScope.user.id }">
                                    <i class="icon-double-angle-right"></i>
                                    已选活动的学生列表
                                </a>
                            </li>
                            <li>
                                <a href="enterGradePage.do?pageNum=1&pageSize=10&teacherId=${sessionScope.user.id }">
                                    <i class="icon-double-angle-right"></i>
                                    通知学生
                                </a>
                            </li>

                        </ul>
                        <!-- 二级菜单结束 -->
                    </li>

                    </c:if>

                    <c:if test="${sessionScope.user.identity  == 2}">
                    <ul class="nav nav-list">
                        <li>
                            <a href="courseListByStudent.do?pageNum=1&pageSize=10&isFinish=1" class="dropdown-toggle">
                                <i class="icon-list"></i>
                                <span class="menu-text">活动管理 </span>

                                <b class="arrow icon-angle-down"></b>
                            </a>
                            <!-- 二级菜单开始 -->
                            <ul class="submenu">
                                <li>
                                    <a href="courseListByStudent.do?pageNum=1&pageSize=5&isFinish=1&studentId=${sessionScope.user.id }">
                                        <i class="icon-double-angle-right"></i>
                                        选择活动
                                    </a>
                                </li>
                                <li>
                                    <a href="studentSchedule.do?pageNum=1&pageSize=5&studentId=${sessionScope.user.id }&flag=-1&date=-1">
                                        <i class="icon-double-angle-right"></i>
                                        查看已选活动
                                    </a>
                                </li>
                            </ul>
                            <!-- 二级菜单结束 -->
                        </li>

                        <%--<li>
                            <a href="studentGrade.do?pageNum=1&pageSize=10&status=-1&studentId=${sessionScope.user.id }">
                                <i class="icon-text-width"></i>
                                <span class="menu-text">活动查询</span>
                            </a>
                        </li>--%>

                        </c:if>


                        <li id="nav-7">
                            <a href="myselfPage.do" class="dropdown-toggle">
                                <i class="icon-desktop"></i>
                                <span class="menu-text">个人中心 </span>

                                <b class="arrow icon-angle-down"></b>
                            </a>

                            <ul class="submenu">

                                <li>
                                    <a href="myselfPage.do">
                                        <i class="icon-double-angle-right"></i>
                                        我的主页
                                    </a>
                                </li>

                                <!-- 							<li> -->
                                <!-- 								<a href="myselfPage.do"> -->
                                <!-- 									<i class="icon-double-angle-right"></i> -->
                                <!-- 									修改信息 -->
                                <!-- 								</a> -->
                                <!-- 							</li> -->

                                <li>
                                    <a href="updatePwdPage.do">
                                        <i class="icon-double-angle-right"></i>
                                        修改密码
                                    </a>
                                </li>


                                <li>
                                    <a href="updateHeadImagePage.do">
                                        <i class="icon-double-angle-right"></i>
                                        修改头像
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <div class="sidebar-collapse" id="sidebar-collapse">
                        <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                           data-icon2="icon-double-angle-right"></i>
                    </div>

                    <script type="text/javascript">
                        try {
                            ace.settings.check('sidebar', 'collapsed')
                        } catch (e) {
                        }
                    </script>
        </div>


        <!-- 设置开始 -->
        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>

            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">

                            <option data-skin="default" value="#438EB9">#438EB9</option>
                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; 选择皮肤</span>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"/>
                    <label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"/>
                    <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                    <label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"/>
                    <label class="lbl" for="ace-settings-rtl">切换到左边</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"/>
                    <label class="lbl" for="ace-settings-add-container">
                        切换窄屏
                        <b></b>
                    </label>
                </div>
            </div>
        </div><!-- /#ace-settings-container -->
        <!-- 设置结束 -->
    </div><!-- /.main-container-inner -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div>
<!-- /.main-container -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
	
