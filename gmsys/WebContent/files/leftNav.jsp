<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                Amaze UI 列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-home"></i>
                            <span>基础数据管理</span>
			    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
			<ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/category/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产分类设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/department/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>部门设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="../files/addzc.jsp">
                                     <i class="am-icon-angle-right"></i>
                                        <span>资产录入</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/area/list.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>区域管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>资产管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
    			<ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="${pageContext.request.contextPath}/buy/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>盘点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll2.do">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll3.do" class="active">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修管理</span>
                                </a>
								<a href="${pageContext.request.contextPath}/buyProuduct/findAll4.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>使用统计</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/balance/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产总数</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buy/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购记录</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="${pageContext.request.contextPath}/tpjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配记录</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                <a href="${pageContext.request.contextPath}/bxjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修记录</span>
                                </a>
								<a href="${pageContext.request.contextPath}/bfjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废记录</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>供应商管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/provider/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>供应商信息查看</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/product/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>产品信息查看</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="login.html" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>登录</span>

                        </a>
                    </li>
                </ul>
            </div>
        </div>